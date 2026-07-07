# 🚀 Trigger 5: Update Related Contact Phone on Account Phone Update

## Description

This project contains an Apex Trigger and Handler class that automatically updates the Phone number of all Contacts related to an Account whenever the Account's Phone number is modified.

The solution follows Salesforce Apex best practices by using **Collections (Set and Map)** to efficiently process records in bulk, retrieve related data, and update Contacts in a single transaction.

## Components

- **AccountTrigger** – Executes on **after update** of Account records.
- **AccountTriggerHandler** – Contains the business logic to synchronize Account Phone numbers with related Contact records.

## Functionality

When an Account is updated:

- Checks whether the **Phone** field has changed.
- Collects the IDs of Accounts whose Phone numbers have been modified.
- Stores the updated Account Phone numbers for efficient lookup.
- Retrieves all Contacts related to the updated Accounts.
- Updates each Contact's **Phone** field with the latest Account Phone number.
- Updates all modified Contacts in a single DML operation.

## Best Practices Implemented

- Bulkified to support multiple Account updates in a single transaction.
- Uses **Set** collections to efficiently identify Accounts that require processing.
- Uses a **Map** for fast Account ID to Phone Number lookup.
- Uses a single SOQL query to retrieve related Contact records.
- Performs a single DML update for all modified Contacts.
- Avoids SOQL and DML operations inside loops.
- Updates only Contacts related to Accounts whose Phone number has changed.
- Maintains separation of concerns by placing business logic in a Handler class.

## Files

- `AccountTrigger.trigger`
- `AccountTriggerHandler.cls`
