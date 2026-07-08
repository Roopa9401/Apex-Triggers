# 🚀 Trigger 6: Assign Owner to High Priority Cases

## Description

This project contains an Apex Trigger and Handler class that automatically assigns a specific owner to Cases when they are created with **High** priority or when an existing Case's Priority is updated to **High**.

## Components

- **CaseTrigger** – Executes on **before insert** and **before update** of Case records.
- **CaseTriggerHandler** – Contains the business logic to assign the specified owner based on the Case Priority.

## Functionality

### On Case Creation

- Checks if the **Priority** is set to **High**.
- Assigns the specified User as the Case Owner before the record is saved.

### On Case Update

- Checks whether the **Priority** has changed from a value other than **High** to **High**.
- Assigns the specified User as the new Case Owner.
- Does not update the owner if the Case was already marked as **High**.

## Best Practices Implemented

- Bulkified to support multiple Case records in a single transaction.
- Uses a single trigger per object.
- Separates business logic into a Handler class.
- Performs owner assignment before the record is saved.
- Updates only Cases whose Priority changes to **High**, avoiding unnecessary updates.

## Files

- `CaseTrigger.trigger`
- `CaseTriggerHandler.cls`
