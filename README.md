# To-supply-left-over-food-to-poor
Project Name: Food Connect
Goal:
Connect food donors and NGOs to reduce food waste using Salesforce automation and CRM capabilities.

Key Salesforce Components:
1. Objects:
Donor__c – Stores donor profiles.
NGO__c – Stores NGO profiles.
Food_Request__c – Posted food details by donors.
Food_Claim__c – Claimed food by NGOs.

2. Relationships:
Donor__c → Food_Request__c – Lookup (One donor, many requests).
NGO__c → Food_Claim__c – Lookup (One NGO, many claims).
Food_Request__c → Food_Claim__c – Lookup (Each request can be claimed).

3. Apex Classes:
Handles logic for posting food, claiming food, and status updates.
Example:
FoodRequestHandler.cls – Creates/updates Food_Request__c.
FoodClaimProcessor.cls – Assigns NGO to a food request.

4. Triggers:
Trigger on Food_Claim__c:
Automatically updates Food_Request__c status to "Claimed" when a claim is inserted.
Trigger on Food_Request__c:
Sends notification (email/alert) to NGOs when new food is posted.

5. Dashboards & Reports:
Admin Dashboard – Track number of food posts, claims, active donors/NGOs.
NGO Dashboard – Food claimed this week/month.
Donor Dashboard – Food donation history.

6. Flows / Automation:
Flow for Donor Registration – Auto-create user record and assign role.
Flow for Food Expiry Check – Scheduled flow to mark food as expired if not claimed in time.
Email Alerts – When food is claimed or post is accepted.

7. Profiles & Roles:
Admin: Full access.
Donor Profile: Can post food.
NGO Profile: Can view and claim food.

8. Validations / Rules:
Food quantity > 0
Expiry time must be in the future
Only one NGO can claim a post
