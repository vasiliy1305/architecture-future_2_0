# Aggregates

- Customer
  - key: customer_id
  - boundary: профиль клиента и его идентификация
  - invariants: один customer_id соответствует одному клиенту

- Patient
  - key: patient_id
  - boundary: регистрация пациента и его маршрут в клинике
  - invariants: пациент не может быть записан на несуществующий визит

- Financial Contract
  - key: contract_id
  - boundary: кредитный или финансовый договор
  - invariants: договор не может быть активирован без клиента

- Payment
  - key: payment_id
  - boundary: операция оплаты и её статус
  - invariants: платёж не может иметь два финальных статуса одновременно

- AI Study
  - key: study_id
  - boundary: результат ИИ-анализа медицинских данных
  - invariants: результат исследования должен быть привязан к пациенту и типу исследования