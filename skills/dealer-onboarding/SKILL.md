---
name: dealer-onboarding
description: One-time setup for new dealership associates using the Car Sales AI suite. Collects the associate's dealership profile, saves it locally, and confirms all three skills (car-sales, conquest-leads, buyer-leads) are ready to use. Run this once when setting up a new associate. After setup, they never need to run it again — all other skills pull from the saved profile automatically.
---

# Dealer Onboarding — First-Time Setup

You are running the one-time setup for a new car sales associate. Your job is to collect their dealership profile, save it to their machine, and confirm their full suite is ready to go.

This only needs to happen once. After this, all three skills (car-sales, conquest-leads, buyer-leads) will be personalized for this associate automatically.

---

## Step 1 — Welcome

Start with:

```
👋 Welcome to the Car Sales AI Suite.

Let's get you set up in about 2 minutes. I'll ask you a few questions about your dealership, save your profile, and then you'll be ready to start working leads right away.

Just answer each question — you can update any of this later by running "update my dealer profile".
```

---

## Step 2 — Collect Profile

Ask these one at a time (not all at once). Keep it conversational:

1. **Your name** — "What's your name? (First and last)"
2. **Dealership name** — "What dealership are you with?"
3. **Your phone number** — "What's your cell number? (This is what we'll use for iMessage outreach)"
4. **Your email** — "What email do you send from?"
5. **Inventory URL** — "What's your dealership's inventory URL? (The link where your cars are listed — e.g. chapmanbmwchandler.com/search/new)"
6. **Financing partners** — "What lenders or financing partners do you work with? (e.g. Ally, TD Auto, Capital One, Westlake, DriveTime — list as many as you want)"
7. **Trade-in tool** — "Do you have a trade-in valuation link? (e.g. KBB, Edmunds, or your dealer's own tool — skip if not)"
8. **City/market** — "What city or metro area is your market? (Used for conquest and buyer lead scanning)"

---

## Step 3 — Confirm & Save

After collecting all answers, display the full profile for review:

```
Here's your dealer profile:

👤 Name:              [NAME]
🏢 Dealership:        [DEALERSHIP]
📱 Your Phone:        [PHONE]
✉️  Your Email:        [EMAIL]
🌐 Inventory URL:     [URL]
💳 Lenders:           [LENDERS]
🔄 Trade-In Tool:     [TRADE-IN URL or "None set"]
📍 Market:            [CITY]

Does everything look right? (Say "yes" to save, or tell me what to fix)
```

---

## Step 4 — Save to Profile File

When the associate confirms, save the profile to:
```
~/car-sales-leads/dealer-profile.md
```

Format:
```markdown
# Dealer Profile
<!-- Updated: [DATE] -->

SALESPERSON_NAME=[NAME]
DEALERSHIP_NAME=[DEALERSHIP]
SALESPERSON_PHONE=[PHONE]
SALESPERSON_EMAIL=[EMAIL]
INVENTORY_URL=[URL]
FINANCING_PARTNERS=[LENDERS]
TRADE_IN_URL=[URL or none]
MARKET_CITY=[CITY]
```

Also create the leads file if it doesn't exist:
```
~/car-sales-leads/leads.csv
```
With the header row:
```
ID,Date,Time,Lead Name,Phone,Email,Lead Type,Car Year,Car Make,Car Model,Car Trim,Car Price,VIN,Stock#,Channel,Subject/Message Preview,Status,Next Follow-Up,Notes
```

---

## Step 5 — Confirm Ready

```
✅ You're all set, [FIRST NAME].

Your profile is saved at ~/car-sales-leads/dealer-profile.md
Your lead tracker is ready at ~/car-sales-leads/leads.csv

Here's what you can do right now:

🔥 ADD A LEAD
   "new lead: [name] [phone] [email] [car they want]"

📊 VIEW PIPELINE  
   "show my pipeline"

🔍 FIND PRIVATE SELLERS
   "run conquest scan — [car type] near [your city]"

🎯 FIND BUYERS
   "find people looking for cars in [your city]"

📋 IMPORT A LIST
   "I have [N] leads to import"

Just talk to me like you're talking to your assistant. 
What do you want to work on first?
```

---

## Updating the Profile

If the associate says "update my dealer profile" or "change my inventory link" etc:
1. Read the existing `~/car-sales-leads/dealer-profile.md`
2. Show current values
3. Ask what they want to change
4. Update the file with new values
5. Confirm saved

---

## Profile Loading (for other skills)

When any other skill (car-sales, conquest-leads, buyer-leads) runs, it should check for `~/car-sales-leads/dealer-profile.md` and auto-load the values to replace `[SALESPERSON NAME]`, `[DEALERSHIP]`, `[PHONE]`, `[EMAIL]`, `[INVENTORY URL]` etc in all templates.

If the profile file doesn't exist, prompt: 
```
⚠️ No dealer profile found. Run "set up my profile" to do your one-time setup — takes 2 minutes.
```
