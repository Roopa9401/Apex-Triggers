# 🚀 Trigger: Prevent Duplicate Contact Email Under the Same Account

## Description

This project contains an Apex Trigger and Handler class that prevents users from creating duplicate Contact records with the same Email address under the same Account.

## Components

* **ContactTrigger** – Executes on **before insert** of Contact records.
* **ContactTriggerHandler** – Contains the logic to validate duplicate Contact Email addresses.

## Functionality

When a new Contact is created:

* Checks if the Contact has an **Account** and an **Email**.
* Searches for existing Contacts with the same **Account** and **Email**.
* Prevents the record from being saved if a duplicate is found.
* Displays the error message:

  * *"A Contact with this Email already exists under the same Account."*

## Files

* `ContactTrigger.trigger`
* `ContactTriggerHandler.cls`

