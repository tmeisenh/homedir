#!/bin/bash
# Simple apple script that creates a 2x2 grid of iterm panes.
# Author: Travis B. Meisenheimer

osascript << EOF
tell application "iTerm"
    tell (make new terminal) # Create a new pseudo terminal...
      tell (launch session "Default session") # ... and open a session (window)

        # create a new vertical pane aka the right side
        tell application "System Events" to keystroke "d" using {command down}
        # create a horizontal pane on the new vertical pane
        tell application "System Events" to keystroke "d" using {shift down, command down}

        # Return to the original pane, by sending two ⌘-[ 
        tell application "System Events" to keystroke "[" using {command down}
        tell application "System Events" to keystroke "[" using {command down}
        # create horizontal pane on left vertical side
        tell application "System Events" to keystroke "d" using {shift down, command down}
      end tell
    end tell
  end tell
EOF
