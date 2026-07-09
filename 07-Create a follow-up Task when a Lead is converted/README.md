# 🚀 Trigger 7: Create Follow-up Task on Lead Conversion

## Description

This project contains an Apex Trigger and Handler class that automatically creates a follow-up Task whenever a Lead is converted.

## Components

- **LeadTrigger** – Executes on **after update** of Lead records.
- **LeadTriggerHandler** – Contains the business logic to create a follow-up Task for newly converted Leads.

## Functionality

When a Lead is updated:

- Checks whether the Lead has been converted.
- Verifies that the Lead was **not previously converted**.
- Creates a follow-up Task for the converted Contact.
- Sets the Task Subject, Description, Status, and Priority.
- Inserts all Tasks in a single DML operation.

## Best Practices Implemented

- Bulkified to support multiple Lead conversions in a single transaction.
- Uses `Trigger.oldMap` to identify newly converted Leads.
- Creates all Task records in memory before performing DML.
- Performs a single DML operation for all Tasks.
- Avoids DML operations inside loops.
- Separates business logic into a Handler class.

## Files

- `LeadTrigger.trigger`
- `LeadTriggerHandler.cls`
