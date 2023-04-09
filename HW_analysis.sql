--Вывести название и цену для всех анализов,
-- которые продавались 5 февраля 2020 и всю следующую неделю.

select distinct an_name, an_price from analysis left JOIN orders on ord_an = an_id
where ord_datetime between date '2020-02-05 00:00:00.0'
          and date '2020-02-05 00:00:00.0' + interval '1 week';
