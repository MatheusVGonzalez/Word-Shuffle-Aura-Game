# Word Shuffle Aura Game 🎮
![image](https://github.com/user-attachments/assets/b3c69456-e232-417b-ae60-c4ceb0ea70c9)

A word puzzle game built using **Salesforce Apex**, **Lightning Aura Components**, and custom **Events** — fully integrated into the **Service Cloud** app.

## Overview

Word Shuffle is a interactive game where the player is given a shuffled word and must guess the correct word within a certain number of attempts.

- ⚙️ Developed with **Apex Classes**, **Aura Framework**, and **Lightning Events**
- 🧠 3 Difficulty Modes: **Easy**, **Medium**, and **Hard**
- 📊 Real-time game history with results (Win/Lose/In Progress)
- 🔁 Shuffle and start new games dynamically
- 💬 Fully integrated into **Service App**, accessible through the **Home Page**

## Where It Runs

This game is designed to run inside **Salesforce's Service App**, embedded on the **Home Page** tab.

> Navigate to the **Service App > Home Tab** to start playing.

## Game Features

- Displays a **target word** and the number of **moves left**
- Supports three game modes:
  - 🟢 Easy
  - 🟡 Medium
  - 🔴 Hard
- Keeps a **game log** on the right panel with:
  - Game Number
  - Mode
  - Date Played
  - Result

## Technologies Used

- **Apex** – for backend logic and controller classes
- **Lightning Aura Components** – for UI and interaction
- **Component Events** – for communication between nested components
- **Lightning App Builder** – to embed the component into the Service Console
- **Custom Metadata & Objects** – to store game history


## How to Use

1. Open the **Service App** in Salesforce.
2. Click on the **Home Tab**.
3. Choose a difficulty mode.
4. Click **"Start New Game"**.
5. Try to guess the word using limited moves!
6. Track your results in the **game log** on the right.

--- 
Project developed during Salesforce Developer certification at The Complete Salesforce Development Course - 2024 updates) - with Professor Manish Choudhari

-- Matheus Verissimo Gonzalez (https://github.com/MatheusVGonzalez)
