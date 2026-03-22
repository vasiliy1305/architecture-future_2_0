# Event Storming

Визуальная схема Event Storming вынесена в отдельные файлы:

- `event-storming.puml` — исходник диаграммы в PlantUML;
- `event-storming.png` — готовая визуализация для ревью.

В диаграмме отражены:
- команды;
- агрегаты;
- доменные события;
- политики;
- read models.

Ключевые доменные события:
- `CustomerRegistered` — регистрация клиента;
- `PatientRegistered` — регистрация пациента;
- `FinancialContractCreated` — создание финансового договора;
- `PaymentCompleted` — успешное выполнение платежа;
- `AIStudyCompleted` — завершение AI-исследования;
- `DataMartPublished` — публикация витрины данных.

Диаграмма показывает, как bounded contexts обмениваются событиями и как на их основе строятся аналитические read models и переходные legacy-интеграции.