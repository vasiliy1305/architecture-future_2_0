# Events

- CustomerRegistered
  - source: Customer Identity
  - meaning: в системе зарегистрирован новый клиент
  - contract: customer_id, registered_at

- PatientRegistered
  - source: Patient & Clinic Operations
  - meaning: пациент зарегистрирован в клинике
  - contract: patient_id, clinic_id, registered_at

- FinancialContractCreated
  - source: Fintech Services
  - meaning: создан финансовый договор
  - contract: contract_id, customer_id, created_at, status

- PaymentCompleted
  - source: Fintech Services
  - meaning: платёж успешно выполнен
  - contract: payment_id, contract_id, customer_id, paid_at, amount

- AIStudyCompleted
  - source: AI Diagnostics
  - meaning: ИИ-анализ завершён и результат готов
  - contract: study_id, patient_id, study_type, completed_at, result_status

- DataMartPublished
  - source: Data & Self-Service Analytics
  - meaning: новая витрина данных опубликована для аналитики
  - contract: datamart_id, domain, published_at, version