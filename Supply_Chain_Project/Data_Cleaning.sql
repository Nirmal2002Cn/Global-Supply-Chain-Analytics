USE supplychaindb;

CREATE TABLE Shipments (
    id INT,
    project_code VARCHAR(50),
    pq_number VARCHAR(50),
    po_so_number VARCHAR(50),
    asn_dn_number VARCHAR(50),
    country VARCHAR(50),
    managed_by VARCHAR(50),
    fulfill_via VARCHAR(50),
    vendor_inco_term VARCHAR(50),
    shipment_mode VARCHAR(50),
    pq_first_sent_date VARCHAR(50),
    po_sent_date VARCHAR(50),
    scheduled_delivery_date VARCHAR(50),
    delivered_date VARCHAR(50),
    delivery_recorded_date VARCHAR(50),
    product_group VARCHAR(50),
    sub_classification VARCHAR(100),
    vendor VARCHAR(100),
    item_description TEXT,
    molecule_test_type TEXT,
    brand VARCHAR(50),
    dosage VARCHAR(50),
    dosage_form VARCHAR(50),
    unit_of_measure INT,
    line_item_quantity INT,
    line_item_value DECIMAL(15,2),
    pack_price DECIMAL(10,2),
    unit_price DECIMAL(10,2),
    manufacturing_site VARCHAR(100),
    first_line_designation VARCHAR(10),
    weight_kg VARCHAR(50),
    freight_cost_usd VARCHAR(50),
    line_item_insurance DECIMAL(10,2)
);

UPDATE shipments
SET scheduled_delivery_date = Null
WHERE scheduled_delivery_date = "Date Not Captured";

UPDATE shipments
SET delivered_date = Null
WHERE delivered_date = "Date Not Captured";

UPDATE shipments
SET po_sent_date = Null
WHERE po_sent_date = "Date Not Captured";


UPDATE shipments
SET shipment_mode = 'Air'
WHERE shipment_mode = 'Air Charter';


UPDATE shipments
SET weight_kg = REPLACE(weight_kg, 'kg', '');


UPDATE shipments
SET weight_kg = TRIM(weight_kg);


UPDATE shipments
SET weight_kg = NULL
WHERE weight_kg = 'Weight Captured Separately';


SELECT DISTINCT weight_kg 
FROM Shipments 
WHERE weight_kg NOT REGEXP '^[0-9]+$';

UPDATE shipments
SET weight_kg = NULL
WHERE weight_kg NOT REGEXP '^[0-9]+$';

UPDATE shipments
SET pq_number = NULL
WHERE pq_number = 'Pre-PQ Process';

UPDATE  shipments
SET country = "Ivory Coast"
WHERE country LIKE  "CÃ´te d'Ivoire";


SELECT distinct country
FROM shipments
ORDER BY country;

UPDATE  shipments
SET scheduled_delivery_date = STR_TO_DATE(scheduled_delivery_date,'%e-%b-%y'),
	delivered_date = STR_TO_DATE(delivered_date,'%e-%b-%y'),
    delivery_recorded_date = STR_TO_DATE(delivery_recorded_date ,'%e-%b-%y');


ALTER TABLE shipments
MODIFY scheduled_delivery_date DATE,
MODIFY delivered_date DATE,
MODIFY delivery_recorded_date DATE;

SELECT distinct pq_first_sent_date
FROM shipments
ORDER BY pq_first_sent_date;

UPDATE shipments
SET pq_first_sent_date = NULL
WHERE pq_first_sent_date = 'Date Not Captured';

UPDATE shipments
SET pq_first_sent_date = NULL
WHERE pq_first_sent_date = 'Pre-PQ Process';


UPDATE shipments
SET freight_cost_usd = "Null"
WHERE freight_cost_usd REGEXP '[a-zA-Z]';

UPDATE shipments
SET freight_cost_usd = "Null"
WHERE freight_cost_usd ="";

select * from shipments;
