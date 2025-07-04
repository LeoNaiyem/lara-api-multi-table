{
    "patient_id": "1",
    "invoice_total": "58416",
    "paid_total": "58416",
    "payment_term": "Cash",
    "services": [
    {
    "id": "2",
    "name": "ECG",
    "price": 258,
    "unit": 87,
    "discount": 18,
    "vat": 0
    },
    {
    "id": "1",
    "name": "X-Ray",
    "price": 409,
    "unit": 88,
    "discount": 14,
    "vat": 0
    }
    ]
    }
        const patient_id = document.getElementById('patient-id').value;
        const serviceSelect = document.getElementById('service-id');
        let subtotalDiv = document.getElementById('subtotal');
        let totalDiv = document.getElementById('total');
        const addBtn = document.getElementById('add');
        const remark = document.getElementById('remark').value;
        const selectedServices = [];


        // add service
        addBtn.addEventListener('click', () => {
            const service_id = serviceSelect.value;
            const service_name = serviceSelect.options[serviceSelect.selectedIndex].text;
            const price = document.getElementById('price').value;
            const unit = document.getElementById('unit').value;
            const discount = document.getElementById('discount').value;
            const tax = document.getElementById('tax').textContent;
            const service = {
                id: service_id,
                name: service_name,
                price: parseFloat(price),
                unit: parseFloat(unit),
                discount: parseFloat(discount),
                vat: 0,

            }
            selectedServices.push(service);
            showServices();
        });

        //show services
        function showServices() {
            const tBody = document.getElementById('table-body');
            let subtotal = 0;
            tBody.innerHTML = '';
            selectedServices.forEach((service, index) => {
                let lineTotal = service.price * service.unit - service.discount;
                subtotal += lineTotal;
                total += subtotal - service.vat;
                const tr = document.createElement('tr');
                tr.innerHTML = `
                            <td class="text-left ps-5 text-blue">${service.name}</td>
                            <td class="text-center text-blue">$${service.price}</td>
                            <td class="text-center text-blue">$${service.unit}</td>
                            <td class="text-center text-blue">$${service.discount}</td>
                            <td class="text-center">
                            <button onClick="removeService(${index})" class="btn btn-sm btn-danger">
                            <i class="fa fa-trash"></i>
                            </button>
                            </td>
                            <td class="text-center text-blue">
                            $${lineTotal}
                            </td>
                            `;
                tBody.appendChild(tr);
            });
            subtotalDiv.textContent = subtotal;
            totalDiv.textContent = subtotal + 10;
        }

        //remove service
        function removeService(i) {
            selectedServices.splice(i, 1);
            showServices();
        }

        //create invoice
        async function createInvoice() {
            const total = document.getElementById('total').textContent;

            const data = {
                patient_id: patient_id,
                invoice_total: total,
                paid_total: total,
                payment_term: 'Cash',
                remark: remark,
                services: selectedServices
            };

            try {
                const response = await fetch('http://127.0.0.1:8000/api/invoices', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json'
                    },
                    body: JSON.stringify(data)
                });

                if (!response.ok) {
                    throw new Error(`Server error: ${response.status}`);
                }

                const result = await response.json();
                console.log('Invoice created:', result);
                alert('Invoice created successfully!');
                // Optionally, redirect or reset form
            } catch (error) {
                console.error('Failed to create invoice:', error);
                alert('Error creating invoice.');
            }
        }