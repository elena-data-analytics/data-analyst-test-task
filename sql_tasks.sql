-- Задание 1: Рейтинг абитуриентов

SELECT
    id,
    scores,
    RANK() OVER (ORDER BY scores DESC) AS rank
FROM examination;



-- Задание 2: FULL JOIN

-- FULL JOIN возвращает:
-- 1) совпавшие строки
-- 2) строки из левой таблицы без пары
-- 3) строки из правой таблицы без пары
-- Минимум строк: 30
-- Максимум строк: 50



-- Задание 3: Покупки клиентов

SELECT
    a.client_id
FROM account a
JOIN transaction t
    ON a.id = t.account_id
WHERE t.transaction_date >= CURRENT_DATE - INTERVAL '1 month'
GROUP BY a.client_id
HAVING SUM(t.amount) < 5000;
