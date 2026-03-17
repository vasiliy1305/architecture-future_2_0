# Event Storming

- Customer Identity publishes `CustomerRegistered` - в системе зарегистрирован новый клиент
  - subscribers: Fintech Services, Data & Self-Service Analytics

- Patient & Clinic Operations publishes `PatientRegistered` - пациент зарегистрирован в клинике
  - subscribers: Medical Records, AI Diagnostics, Data & Self-Service Analytics

- Fintech Services publishes `FinancialContractCreated` - создан финансовый договор
  - subscribers: Data & Self-Service Analytics, Integration

- Fintech Services publishes `PaymentCompleted` - платёж успешно выполнен
  - subscribers: Data & Self-Service Analytics, Integration, Legacy Core

- AI Diagnostics publishes `AIStudyCompleted` - ИИ-анализ завершён и результат готов
  - subscribers: Medical Records, Data & Self-Service Analytics

- Data & Self-Service Analytics publishes `DataMartPublished` - опубликована новая витрина данных
  - subscribers: Integration, Legacy Core