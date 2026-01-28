# Custom Fork for LazyScript

*This is a work in progress and edits have been made based on personal preference.*

**All changes will be for english locale ONLY.**

I can update as needed via requests made in **ISSUES**.


## ***V1.0***

### **GENERAL**
- Minor improvements to logic here or there.
- ifSwinged moved to ParseGeneral.lua to allow all classes to utilize this function.
- Decimal format for all criteria imported via the [Gaverto fork](https://github.com/Gaverto/LazyScript-for-Turtle-WoW/tree/main).

### **WARRIOR:**

- Added the ability to cast sunder based on % armor reduction and not just flat rates. ("^ifArmorReduction([<=>])(%d+)(%%?)$").
- Sunder flat rate logic included to determine how effective 1 stack of sunder is on the current target.

### **HUNTER:**

- Changed ifSwinged to work with Quiver rather than SP_Swingtimer as this seems to be the more popular choice. This will allow for future modifications that can check if autoshot is on cooldown (just fired).
- Added ability Carve.
- Added ability Baited Shot.
- Added ability Lacerate.
- Added pet ability Savage Rend.
- Added aliases for pet damage abilities to remove chat window invalid alias errors.


	
