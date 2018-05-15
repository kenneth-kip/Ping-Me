## Simple Shell Sound Notification

    Notify user as soon as a command or task is done.

## Usage

1. `Command; pingme` e.g `rspec; pingme`. This will notify you with a sound as soon as your command has ran

2. `pingme task-PID` e.g `pingme`. This will ping you as soon as the task with the PID is stopped.

## Installation

1. Move to the root of your directory with `cd ~`

2. git clone this repo

3. Add this to your bashrc or zshrc e.g `alias pingme="$HOME/pingme.sh"`