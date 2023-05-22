-- Create a table
create table ANIMALS (
ANIMAL_ID INT PRIMARY KEY NOT NULL,
ANIMAL_NAME varchar(30) NOT NULL,
ANIMAL_TYPE varchar(30) NOT NULL,
PRICE decimal(4,2) NOT NULL,
DESCRIPTION varchar(100) NOT NULL
);

-- Add values to the table (Spelling error on purpose + column to be dropped + row to be deleted)
insert into ANIMALS (ANIMAL_ID, ANIMAL_NAME, ANIMAL_TYPE, PRICE, DESCRIPTION) 
values
(1, 'Bella', 'Dog', 250.00, 'Friendly and playful'),
(2, 'Shadow', 'Cat', 125.00, 'Affectionate and gentle'),
(3, 'Rocky', 'Dog', 300.00, 'Active and energetic'),
(4, 'Luna', 'Cat', 75.00, 'Playful and curious'),
(5, 'Charlie', 'Hamsterk', 20.00, 'Small, trusting, fluffly'),
(6, 'Milo', 'Bird', 50.00, 'Smart, easily-trained to commands');

-- Alter the table to correct spelling error
update ANIMALS
set ANIMAL_TYPE = 'Hamster'
where ANIMAL_TYPE = 'Hamsterk';

-- Drop the description column
alter table ANIMALS
drop column DESCRIPTION;

-- Luna has been bought. Drop the row from the table
delete from ANIMALS
where ANIMAL_ID = 4;