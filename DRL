create database pet_clinic;
use pet_clinic;

Delimiter Go
create table PetOwner
(
    owner_id int PRIMARY KEY,
    owner_name char(50),
    surname char(50),
    street_address char(100),
    city char(100),
    state char(10),
    zipCode int
)
Go

Delimiter Go
create table Pet
(
    pet_id char(10) PRIMARY KEY,
    pet_name char(20),
    kind char(10),
    gender char(6),
    age int,
    owner_id int
    )
    Go
    Delimiter Go
    create table ProcedureHistory
    (
	pet_id char(10),
	procedure_date date,
	procedure_type char(50),
	Descript char(100)
    )
Go


Delimiter Go 
ALTER TABLE PetOwner
ALTER state
SET
DEFAULT 'Michigan'
Go
Select * From PetOwner;
    
Delimiter Go
ALTER TABLE Pet
ADD FOREIGN KEY (owner_id) REFERENCES PetOwner(owner_id)
Go
    
Delimiter Go
ALTER TABLE ProcedureHistory
ADD FOREIGN KEY (pet_id) references Pet(pet_id)
Go
