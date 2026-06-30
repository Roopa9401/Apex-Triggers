# Account Trigger - Auto Opportunity Creation

## Description

This project contains an Apex Trigger and Handler class that automatically creates an Opportunity whenever a new Account is created.

## Components

* **AccountTrigger** - Executes on `after insert` of Account records.
* **AccountTriggerHandler** - Contains the logic to create Opportunity records.

## Functionality

When a new Account is created:

* An Opportunity is automatically created.
* Opportunity Name is set to the Account Name.
* Stage is set to **Prospecting**.
* Close Date is set to **Today's Date + 10 days**.
* Opportunity is linked to the respective Account.

## Files

* `AccountTrigger.trigger`
* `AccountTriggerHandler.cls`

