# 🚀 Trigger 1: Create Contact on Account Creation

## Description

This project contains an Apex Trigger and Handler class that automatically creates a Contact whenever a new Account is created.

## Components

* **AccountTrigger** - Executes on `after insert` of Account records.
* **AccountTriggerHandler** - Contains the logic to create Contact records.

## Functionality

When a new Account is created:

* A Contact is automatically created.
* Contact Last Name is set to the Account Name.
* Contact is linked to the respective Account.

## Files

* `AccountTrigger.trigger`
* `AccountTriggerHandler.cls`
