SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
UNION ALL
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
UNION 
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
INTERSECT
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
MINUS
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8;

SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=8
MINUS
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0;

ACCEPT WhatIsTheMinimumQuantityForSet2 Prompt ' What is the minimum quantity for set 2?'


SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE MOD(quantity, 3) = 0
MINUS
SELECT transaction_id, quantity, actual_cost
FROM ptbl_transaction
WHERE quantity>=&WhatIsTheMinimumQuantityForSet2;

SELECT NVL(subcategory_name, 'No Subcategory') as Subcategory_Name
    , count(Product_ID) as Number_Of_Records
FROM PTBL_PRODUCT
NATURAL LEFT JOIN PTBL_SUBCATEGORY
GROUP BY subcategory_name
ORDER BY subcategory_name;

SELECT NVL(subcategory_name, 'No Subcategory') as Subcategory_Name
    , count(Product_ID) as Number_Of_Records
    , CASE WHEN count(Product_ID) = 1 THEN 'Only one'
        ELSE 'More than one' END AS Quantity_Comment
FROM PTBL_PRODUCT
NATURAL LEFT JOIN PTBL_SUBCATEGORY
GROUP BY subcategory_name
ORDER BY subcategory_name;






