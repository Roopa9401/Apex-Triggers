# 🚀 Salesforce Triggers

<p align="center">
  <img src="https://img.shields.io/badge/Salesforce-Apex%20Triggers-blue?style=for-the-badge&logo=salesforce" />
  <img src="https://img.shields.io/badge/Level-Beginner%20to%20Advanced-green?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Topics-Interview%20Ready-orange?style=for-the-badge" />
</p>

Welcome to the **Salesforce Triggers Repository**! 🎉

This repository contains **Apex Trigger examples, concepts, best practices, and real-time scenarios** to help Salesforce developers learn and master Triggers.

---

# 📖 What is a Trigger?

A **Trigger** is a piece of **Apex code** that executes automatically when a record is **inserted, updated, deleted, or undeleted** in Salesforce.

Think of a Trigger as an **event listener** 👂 that listens for changes on Salesforce records and performs actions automatically.

### 🏢 Real-Time Example

Imagine whenever a new **Account** is created, the business wants to:

✅ Create a default Contact automatically.

✅ Send a welcome email.

✅ Validate mandatory business rules.

Triggers help us automate these requirements.

---

# 🎯 Why Do We Use Triggers?

We use Triggers when business requirements cannot be achieved using only **Flows, Validation Rules, or other declarative tools**.

### Common Use Cases

✨ Auto-populate fields

✨ Create related records automatically

✨ Prevent duplicate records

✨ Update related objects

✨ Perform complex validations

✨ Send notifications

✨ Integrate with external systems

---

# 🔄 Trigger Types

Salesforce supports two types of Triggers:

## 🟢 Before Triggers

These Triggers execute **before** records are saved to the database.

### Used for:

- ✔️ Validating data
- ✔️ Updating field values
- ✔️ Preventing records from being saved

### Example

```apex
trigger AccountBeforeInsert on Account(before insert) {

    for(Account acc : Trigger.new){
        acc.Description = 'Account Created';
    }

}
```

---

## 🔵 After Triggers

These Triggers execute **after** records are saved to the database.

### Used for:

- ✔️ Creating related records
- ✔️ Accessing Record IDs
- ✔️ Updating related objects
- ✔️ Integrating with external systems

### Example

```apex
trigger AccountAfterInsert on Account(after insert) {

    List<Contact> contacts = new List<Contact>();

    for(Account acc : Trigger.new){
        contacts.add(new Contact(
            LastName = 'Default Contact',
            AccountId = acc.Id
        ));
    }

    insert contacts;
}
```

---

# ⚡ Trigger Events

| Event | Description |
|--------|-------------|
| 🟢 Before Insert | Executes before records are inserted |
| 🟡 Before Update | Executes before records are updated |
| 🔴 Before Delete | Executes before records are deleted |
| 🟢 After Insert | Executes after records are inserted |
| 🟡 After Update | Executes after records are updated |
| 🔴 After Delete | Executes after records are deleted |
| ♻️ After Undelete | Executes after deleted records are restored |

---

# 🧩 Trigger Syntax

```apex
trigger TriggerName on ObjectName (trigger_events) {

    // Trigger Logic

}
```

### Example

```apex
trigger AccountTrigger on Account(before insert, before update){

    if(Trigger.isBefore){

        if(Trigger.isInsert){

            for(Account acc : Trigger.new){
                acc.Description = 'Created via Trigger';
            }
        }
    }
}
```

---

# 🔍 Trigger Context Variables

| Variable | Description |
|-----------|-------------|
| `Trigger.new` | Returns new versions of records |
| `Trigger.old` | Returns old versions of records |
| `Trigger.newMap` | Map of new records |
| `Trigger.oldMap` | Map of old records |
| `Trigger.isInsert` | Returns true during insert |
| `Trigger.isUpdate` | Returns true during update |
| `Trigger.isDelete` | Returns true during delete |
| `Trigger.isBefore` | Returns true in before trigger |
| `Trigger.isAfter` | Returns true in after trigger |
| `Trigger.size` | Total number of records |

---

# 🔄 Salesforce Order of Execution

Whenever a record is saved:

```text
1️⃣ System Validation
2️⃣ Before Triggers
3️⃣ Validation Rules
4️⃣ Duplicate Rules
5️⃣ Record Saved (Not Committed)
6️⃣ After Triggers
7️⃣ Assignment Rules
8️⃣ Auto-Response Rules
9️⃣ Workflow Rules
🔟 Processes & Flows
1️⃣1️⃣ Escalation Rules
1️⃣2️⃣ Roll-Up Summary Updates
1️⃣3️⃣ Commit to Database
```

---

# ✅ Trigger Best Practices

✔️ One Trigger Per Object

✔️ Always Bulkify Triggers

✔️ Avoid SOQL inside loops

✔️ Avoid DML inside loops

✔️ Use Trigger Handler Classes

✔️ Use Collections (List, Set, Map)

✔️ Prevent Recursive Execution

✔️ Write Test Classes

✔️ Handle Exceptions Gracefully

---

# 🌟 Repository Goals

This repository aims to cover:

- Basic Trigger Examples
- Trigger Context Variables
- Bulkification
- Trigger Framework
- Recursion Handling
- Real-Time Scenarios
- Interview Questions
- Best Practices

---

### ⭐ If you find this repository helpful, don't forget to star it!
