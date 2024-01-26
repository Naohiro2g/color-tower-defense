# Note by Naohiro2g

This is a fork of the original Color Tower Defense game written in Python 2 and Pygame. I used pyenv and virtualenv to set up the Python 2.7.18 and pygame 1.9.2 environments. I also created a bash script to remove warnings around libpng. The script is named [`.remove_iccp.sh`](./.remove_iccp.sh) in the root directory of this project. By the way, the png files have already been processed, so you don't need to use it, and the script is for your reference only. The script requires `pngcrush` to be installed.

Since neither PDM nor poetry is compatible with Python 2.7.18, I created a .venv directory using virtualenv. It is not included in this repository.

## How to set up the environment and run the game

    # If you don't have Python 2.7.18 installed by pyenv.
    $ pyenv install 2.7.18
    # If you don't have virtualenv installed for Python 2.7.18.
    $ pip install virtualenv

    # Below are the command lines to be used in the project directory.
    $ pyenv local 2.7.18
    $ virtualenv .venv
    $ source .venv/Scripts/activate

    # In the virtual environment.
    $ pip install pygame==1.9.2

    # Run the game.
    $ python Color\ Tower\ Defense.py

## One big hint to play the game

You need to click the "NEXT WAVE" at the up-right to start the enemy's attack wave after you placed initial defence towers. The game will not start automatically.

## The original README is below

========================

Color Tower Defense is a game where you must use unique towers to defend off the waves of invading enemies.

![screenshot of game](http://pygame.org/shots/1688.png)

Upgrade your towers into one of the many choices for increased firepower.

The more difficult levels require quick placement and selling of towers in order for them to keep the enemies in range and to be most effective.

Hotkeys:

B - enter build tower mode
Right click - exit build tower mode
Spacebar, ESC - exit build tower mode
Spacebar, ESC(again) - starts new wave
1, 2, 3 - upgrade selected tower
S, 4 - sell selected tower
P - pause game

the source download runs on mac and windows

run Color Tower Defense.py

Follow our progress at:
http://madcloudgames.blogspot.com/

or email us at:
madcloudgames@gmail.com
