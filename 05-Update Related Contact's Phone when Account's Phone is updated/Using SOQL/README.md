# 🚀 Trigger 5: Update Contact Phone When Account Phone is Updated Using SOQL

## Description

This project contains an Apex Trigger and Handler class that automatically updates the Phone number of all related Contacts whenever the Phone number of an Account is updated. The solution uses a **SOQL query** to retrieve the related Contact records.

## Components

- **AccountTrigger** – Executes on **after update** of Account records.
- **AccountTriggerHandler** – Contains the logic to query and update related Contact records.

## Functionality

When an Account is updated:

- Checks whether the **Phone** field has changed.
- Uses a **SOQL query** to retrieve all Contacts related to the updated Account.
- Updates each Contact's **Phone** field with the new Account Phone number.
- Performs the update in a single DML operation.

## Files

- `AccountTrigger.trigger`
- `AccountTriggerHandler.cls`
