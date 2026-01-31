# Custom Fork for LazyScript

*This is a work in progress and edits have been made based on personal preference.*

**All changes will be for english locale ONLY.**

I can update as needed via requests made in [**ISSUES**](https://github.com/Giggamesh/LazyScript-Custom-Fork/issues).

Optional Dependancy: [SP_Swingtimer - Giggamesh Fork](https://github.com/Giggamesh/SP_Swingtimer).

Optional Dependance: [Monkeyspeed](https://github.com/for-wow/MonkeySpeed).

## ***V1.1***

### **GENERAL**
- Moved SP_Swingtimer optional dependancy into lazyScript.toc
- Added criteria "-if[Not]Moving" for all classes. This requires [Monkeyspeed](https://github.com/for-wow/MonkeySpeed).

## ***V1.0***

### **GENERAL**
- Minor improvements to logic here or there.
- ifSwinged moved to ParseGeneral.lua to allow all classes to utilize this function.
- Decimal format for all criteria imported via the [Gaverto fork](https://github.com/Gaverto/LazyScript-for-Turtle-WoW/tree/main).

### **WARRIOR:**

- Added the ability to cast sunder based on % armor reduction and not just flat rates. ("^ifArmorReduction([<=>])(%d+)(%%?)$").
- Sunder flat rate logic included to determine how effective 1 stack of sunder is on the current target.
- Ability Master Strike added

### **HUNTER:**

- Changed ifSwinged to work with Quiver rather than SP_Swingtimer as this seems to be the more popular choice. This will allow for future modifications that can check if autoshot is on cooldown (just fired).
- Added ability Carve.
- Added ability Baited Shot.
- Added ability Lacerate.
- Added pet ability Bubble Barrier.
- Added pet ability Death Roll.
- Added pet ability Packleader.
- Added pet ability Roar of Fortitude.
- Added pet ability Savage Rend.
- Added pet ability Strider Presence.
- Added pet ability Web.
- Added aliases for pet damage abilities to remove chat window invalid alias errors.
- Added buff Kill Command.


	
