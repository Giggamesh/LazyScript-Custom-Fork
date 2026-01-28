# Custom Fork for LazyScript

*This is a work in progress and edits made based on personal preferences. All changes will be for english locale ONLY.*

**CUSTOM CHANGES CAN BE REQUESTED VIA ISSUES**


## ***V1.0***

**GENERAL**
- Minor improvements to logic here or there.
- ifSwinged moved to ParseGeneral.lua to allow all classes to utilize this function
- Decimal format for all criteria imported via the [Gaverto fork](https://github.com/Gaverto/LazyScript-for-Turtle-WoW/tree/main)

**WARRIOR:**

- Added the ability to cast sunder based on % armor reduction and not just flat rates. ("^ifArmorReduction([<=>])(%d+)(%%?)$")
- Sunder flat rate logic included to determine how effective 1 stack of sunder is on the current target.

**HUNTER:**

- Changed ifSwinged to work with Quiver rather than SP_Swingtimer as this seems to be the more popular choice. This will allow for future modifications that can check if autoshot is on cooldown (just fired).
- Added ability Carve
- Added ability Baited Shot
- Added ability Lacerate
- Added pet ability Savage Rend. This ability is coded strangely and the usual lua for petAbility doesn't seem to work. Treating it as a hunter ability resolves this issue.


	
