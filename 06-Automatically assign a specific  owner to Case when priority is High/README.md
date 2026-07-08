# 🚀 Trigger 6: Assign Owner to High Priority Cases

## Description

This project contains an Apex Trigger and Handler class that automatically assigns a specific owner to Cases whenever the Priority is set to **High**.

## Components

- **CaseTrigger** – Executes on **before insert** and **before update** of Case records.
- **CaseTriggerHandler** – Contains the business logic to assign the appropriate Case owner.

## Functionality

When a Case is created or updated:

- Checks whether the **Priority** is set to **High**.
- Assigns the specified User as the Case Owner.
- Ensures High Priority Cases are automatically routed to the designated owner.

## Best Practices Implemented

- Bulkified to support multiple Case records in a single transaction.
- Uses a single trigger per object.
- Separates business logic into a Handler class.
- Avoids DML operations inside loops.
- Designed for easy enhancement using Custom Metadata or Custom Settings for owner configuration.

## Files

- `CaseTrigger.trigger`
- `CaseTriggerHandler.cls`
