# ComputerArchContest1
Computer Arch and Assembly Contest 1

## Project Overview

We decided to create a simple basketball game called Basketball Free Throw Game.  We are building this game using x86 Assembly Language(MASM) and the Irvine32 library. 

The Player attempts to make free throws by selecting a shooting angle and power level. The game determines if it is a successful shot and lets the user know by displaying it on the screen.The game also keeps track of how many shots were made out of five attempts and displays the results on the screen.

We are developing this game for CSE3120 class at Florida Institute of Technology

## Team Members
-Amanda Ogbonna

-Elif Bayrak

## Tools
Language: x86 Assembly(MASM)

Library: Irvine32

IDE: Visual Studio

Platform: Windows (32-bit x86 application)

## Planned Game Features

Main menu with start and exit options.

Shooting angle selection(1-90)

Shooting power selection(1-10)

Input validation for shooting power, angle, and menu choices

Shot success or failure calculation

Five shooting attempts per game

Score tracking

Final score displayed out of five.


## How to Compile and Run

Install Visual Studio with C++ development tools.

Configure MASM and the Irvine32 library.

Open the project in Visual Studio.

Select the Win32/x86 build configuration.

Build the project.

Run the program.

Select start game and enter your shooting power and angle each time

## Game Rules

The player selects Start Game from the main menu.

The player enters a shooting power between 1 and 10.

The player enters a shooting angle between 1 and 90 degrees.

A shot is successful when the power is between 5 and 7 and the angle is between 40 and 50 degrees.

Each successful shot adds one point to the score.

The game continues for five attempts.

After five shots, the final score is displayed.

Note: The game currently does not validate input ranges.

## Future Improvements

Different difficulty levels

ASCII basketball graphics

Option to play again

## Week 1 – October 27: Initial Setup

### Amanda Ogbonna:

Created the game title and basic program

Added shooting power input

Fixed Irvine32 configuration issues

### Elif Bayrak:

Planned the game structure and procedures (committed November 5)

## Week 2 – November 5: Game Development

### Amanda Ogbonna:

Created the main menu

Moved shooting power into a procedure

Added score and shot number variables

Implemented the five-shot loop

Fixed the main procedure

### Elif Bayrak:

Created the shooting angle procedure

Implemented shot success and failure calculations

Added shot result messages

Created the final score procedure

Added the final score procedure call

## Week 3 – November 9

### Amanda Ogbonna:

Improved code comments and formatting

Help fix any remaining bugs

Added Input validation for angle

### Elif Bayrak:

Test shooting calculations with different inputs

Update project documentation

Added Input validation for power

### Both Team Members:

Complete final testing

Prepare the game demonstration

Review the final project
