# 🚀 Trigger 4: Validate Phone Number on Account Creation

## Description

This project contains an Apex Trigger and Handler class that prevents users from creating an Account without a Phone Number.

## Components

- **AccountTrigger** – Executes on **before insert** of Account records.
- **AccountTriggerHandler** – Contains the logic to validate the Phone field.

## Functionality

When a new Account is created:

- Checks whether the **Phone** field is populated.
- Prevents the Account from being created if the Phone field is blank.
- Displays the error message:
  - *"Account cannot be created without a Phone Number."*

## Files

- `AccountTrigger.trigger`
- `AccountTriggerHandler.cls`
