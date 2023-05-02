DROP TABLE contact_info CASCADE;

CREATE TABLE contact_info (
    contact_id VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(contact_id)
);

SELECT * FROM contact_info;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(100) NOT NULL,
	Subcatogry VARCHAR(50) NOT NULL,
	PRIMARY KEY(subcategory_id)
);

SELECT * FROM subcategory;

CREATE TABLE category (
	category_id VARCHAR(50) NOT NULL,
	Category VARCHAR(50) NOT NULL,
	PRIMARY KEY(category_id)
);

SELECT * FROM category;


CREATE TABLE campaign (
	category_id VARCHAR(50) NOT NULL,
	cf_id VARCHAR(50) NOT NULL,
	contact_id VARCHAR(50) NOT NULL,
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(100) NOT NULL,
	goal VARCHAR(50) NOT NULL,
	pledged VARCHAR(50) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count VARCHAR(50) NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	lanched_date VARCHAR(20) NOT NULL,
	end_date  VARCHAR(20) NOT NULL,
	subcategory_id VARCHAR(100) NOT NULL,
	PRIMARY KEY(cf_id)
);

SELECT * FROM campaign;

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact_info" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");
