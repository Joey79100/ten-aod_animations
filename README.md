# TRLE - AOD Animations for TombEngine

A **Tomb Raider: The Angel Of Darkness** based animation set for **[Tomb Engine](https://tombengine.com/)**.

Preview (**Jul 28, 2019**):

<a href="http://www.youtube.com/watch?feature=player_embedded&v=O-3Q1sZRti4" target="_blank">
	<img src="https://img.youtube.com/vi/O-3Q1sZRti4/0.jpg"alt="Video preview of the animations from Jul 28, 2019" width="240" height="180" border="10" />
</a>

Note that this video was made using the **[TRNG version](https://github.com/Joey79100/trle-aod_animations)**.


# 1. The project - general information

## 1.1. Updates and progression
You can:
- Follow the [commits](https://github.com/Joey79100/trle-aod_animations/commits/master) to see the **latest updates**.
- Read the [issues](https://github.com/Joey79100/trle-aod_animations/issues) named "_Progress tracker \*\*\*_" to see the **lists of animations** that have been remade or planned.  
  *Note: this is a list based on the TRNG version. I will provide a list specifically for this version in the near future.*


## 1.2. Target engine/editor
The project is currently developped using **TombEngine**.
The original **[TRNG version](https://github.com/Joey79100/trle-aod_animations)** will remain available, but I have no plan to continue working on them, as it would double the work for me.

You can build levels for [Tomb Engine (TEN)](https://tombengine.com/) using [Tomb Editor (TE)](https://github.com/TombEngine/TombEditorReleases/releases).


# 2. Installation

First, you can either:
- Download the **playable package** if you want to playtest the animations before using them.  
  Find the big green "**Code**" menu button at the top of this page, then hit [Download ZIP](https://github.com/Joey79100/ten-aod_animations/archive/refs/heads/master.zip).

- Or just download [Assets](https://github.com/Joey79100/ten-aod_animations/tree/master/Assets)/[Objects](https://github.com/Joey79100/ten-aod_animations/tree/master/Assets/Objects)/[**Lara.wad2**](https://github.com/Joey79100/ten-aod_animations/blob/master/Assets/Objects/Lara.wad2) if you **just want the animations**.

Then keep reading.

## 2.1. Importing the animations
The animations can be found in [`Assets\Objects\Lara.wad2`](Assets/Objects/Lara.wad2).

_Assuming you're okay with the outfit_, you only need to **load this WAD into your project**, and update it from time to time.

If you're willing to use a different outfit, keep reading.


## 2.2. Using different outfits _(Tomb Editor 1.7.1 and below)_
> Note: This is still useful for Tomb Editor 1.7.1 and below. With the following versions of Tomb Editor, this steps will not be necessary anymore.  
> At the time of writing, Tomb Editor's latest version is still 1.7.1.

Lara's outfit was made by **Mrshina**.
It is different: Lara's **mesh positions are different** from a classic outfit, in order to match AOD proportions better.
Thus, using the LARA object from this project's with a "classic" outfit will result in an alien-like Lara in-game.

Export/import in **WadTool** into your existing WAD2:
   1. Open `Lara.wad`.
      1. Double-click *LARA* to open it in the *Animation Editor*.
      2. Open the `Animations` menu, and select `Batch` > `Export all...`.
      3. Create a dedicated folder for the animations, and select it.
      4. Close the animation editor.
   2. Open your WAD.
      1. Double-click *LARA* to open it in the *Animation Editor*.
      2. Open the `Animations` menu, and select `Batch` > `Import...`.
      3. Select the folder in which your exported the animations.
   3. Save the changes, close the animation editor, and save your WAD2.

> Note: it is **not** advised to edit the `TombEngine.wad2` that comes with Tomb Editor. This file may be updated at any Tomb Editor update. Instead, copy the LARA object into another WAD2 and add it to your project, before editing it.


## 2.3. Sounds
This package **works fine with the default TEN sounds**, and is also **compatible with its TR1-2-3-5 overrides**.

If you want the "_full AOD experience_", you can use the **sound catalogs** and samples provided in this repository.

### If you want to use the "**1 terrain type = 1 footstep sound**" _(Tomb Editor 1.7.2 and above)_
> Note: There is a bug in Tomb Editor 1.7.1 and below: footsteps sounds "**Custom 3**" to "**Custom 8**" will always revert to "**Custom 2**" when you reload your project. This will be fixed in the next version.
> At the time of writing, Tomb Editor's latest version is still 1.7.1.

The animations are _ready to work_ with the more natural "**1 terrain type = 1 footstep sound**" approach (as opposed to the "stone + footstep sound" approach TR3-4-5 use).

You can use the `Footsteps.xml` catalog, which is setup with this approach in mind.
   1. In Tomb Editor, open your **Level settings**:
      1. In the **Sound Infos** tab, add the [`Assets\Sounds\Footsteps.xml`](Assets/Sounds/Footsteps.xml) catalog.
      2. In the ***Sound Sample Paths** tab, add the path to the samples.
   2. Close your Level settings, and open your **Texture sounds** window:
      1. Assign the "**Custom 8**" type to all your **Stone** textures.  
    _This is required because **Stone** itself will not produce any sound. That's how Core Designed it._


## 2.4. Using interactible objects
Here's a list of the objects that have been worked on. Some of them have custom animations in order to fit Lara's new animations.
Unlisted objects means that Lara's animations have not been touched for them yet.

Note: __object sounds have *all* been removed from LARA's animations - they have been added to the objects themselves instead!__

Slot               | Description                 | Custom animations | Remarks
-------------------|-----------------------------|-------------------|----------------------------------------------------------------------------
FLOOR_TRAPDOOR1    | Trapdoor that can be lifted | Yes               | -
PUSHABLE_BLOCK     | Movable block               | -                 | -
SWITCH_TYPE1       | Wall lever switch           | Yes               | -
SWITCH_TYPE3       | Electric switch             | Yes               | The object's dimensions are also different!
SWITCH_TYPE4       | Small button switch         | -                 | -
SWITCH_TYPE5       | Valve switch                | Yes               | The object's dimensions are also different!
UNDERWATER_SWITCH1 | Underwater switch           | Yes               | -
LEVER_SWITCH       | Floor lever switch          | -                 | -
JUMP_SWITCH        | Elevated wall switch        | -                 | -
PULLEY             | Pulley                      | Yes               | Looping is disabled, it was causing issues (1st pull was ok, then it broke)
KICK_DOOR          | Kickable door               | Yes               | -
PUSHPULL_DOOR      | Normal door                 | Yes               | -
DOUBLE_DOORS       | Double door                 | -                 | Uses the Big Double Doors animation from AOD (eg. Archeological Digsite)
SARCOPHAGUS        | Sarcophagus                 | -                 | -
SEQUENCE_SWITCH    | Big button switch           | -                 | -


# 3. Credits
- Direct contributions
  - [Gecko](https://trcustoms.org/users/70): Testing and error reporting for the TEN version
  - [Sezz](https://github.com/Sezzary): Info about TEN's direction & changes regarding animations, general improvements to Lara's handling
- Indirect contributions
  - [Krystian](https://www.trsearch.org/member/3312): Animation utilities, and help generally speaking
  - [Caesum](https://twitter.com/Caesum): Feedback and advice
  - [Daledrau](https://twitter.com/daledrau): Title screen render
  - [Mrshina](https://www.trsearch.org/member/3507): Lara's outfit
  - [The Lost Dominion team](https://www.tombraiderforums.com/showthread.php?t=196197) ([members](https://www.tombraiderforums.com/showthread.php?t=179784)) & [The Lost Dominion Revival team](https://www.tombraiderforums.com/showthread.php?t=216488): Medipacks, Batteries
  - [Tomb Engine team](https://github.com/MontyTRC89/TombEngine): TombEngine
  - [Tomb Editor team](https://github.com/MontyTRC89/Tomb-Editor): Tomb Editor and its tools
  - Core Design & Eidos Interactive: Tomb Raider

As the [The Dark Renaissance](https://github.com/Castigavi/the-dark-renaissance) project (and before that, The Lost Dominion) was originally a private project in which I was only a member, I did not keep a credits list. I am trying to correct this, but I may be missing people here. Feel free to let me know if you know more details.


# 4. See also

- [**TRLE - Project Fix Lara**](https://github.com/Dermahn/Project-Fix-Lara-v2): Fixed Lara animations for TRLE & TRNG
- [**TRLE - AOD Animations**](https://github.com/Joey79100/trle-aod_animations): Original TRNG version of this project