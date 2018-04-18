/*Get all make/model cars where we made a profit*/
SELECT CAM13052.PRODUCT_NAME
FROM CAM13052.INVENTORY INNER JOIN CAM13052.SALE ON CAM13052.INVENTORY.PRODUCT_ID=CAM13052.SALE.PRODUCT_ID
WHERE CAM13052.SALE.PROFIT>0;

/*Get all make/model cars that took more than a user-specified amount of parts*/
SELECT CAM13052.PRODUCT_NAME
FROM CAM13052.INVENTORY INNER JOIN CAM13052.REPAIR ON CAM13052.INVENTORY.PRODUCT_ID=CAM13052.REPAIR.PRODUCT_ID
WHERE CAM13052.REPAIR.PARTS_USED>&MIN_PARTS;