-- Используя JOIN-ы, выполните следующие операции:
-- Вывести всех котиков по магазинам по id
-- (условие соединения shops.id = cats.shops_id)
select name from cats left join shops s on s.id = cats.shops_id;

-- Вывести магазин, в котором продается кот “Мурзик”
-- (попробуйте выполнить 2 способами)
select shopname from shops left join cats c on shops.id = c.shops_id where c.name = 'Murzik';

select shopname from shops where id in (select shops_id from cats where cats.name = 'Murzik');

-- Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”

select * from shops left join cats on shops.id = cats.shops_id
    and name not in ('Murzik', 'Zuza') where cats.id is null;