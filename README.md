# Note by Naohiro2g

This is a fork of the original Color Tower Defense game written in Python 2 and Pygame. I used pyenv and virtualenv to set up the Python 2.7.18 and pygame 1.9.2 environments.

I also created a bash script to remove following warnings around libpng. `libpng warning: iCCP: known incorrect sRGB profile` The script is named [`.remove_iccp.sh`](./.remove_iccp.sh) in the root directory of this project. By the way, the png files have already been processed, so you don't need to use it, and the script is for your reference only. The script requires `pngcrush` to be installed.

Since neither PDM nor poetry is compatible with Python 2.7.18, I created a .venv directory using virtualenv. You have to recreate the .venv because it is not included in this repository.

I saw the following warnings at the game over scene or others, but they were not easy to be reproduced.
`libpng warning: Interlace handling should be turned on when using png_read_image`

Just to be safe, I removed the interlaced flag from the png files using the following command line.
```
magick mogrify -interlace none Resources/Images/**/*/*.png
```

## How to set up the environment and run the game

    # If you don't have Python 2.7.18 installed by pyenv.
    $ pyenv install 2.7.18
    # If you don't have virtualenv installed for Python 2.7.18.
    $ pip install virtualenv

    # Below are the command lines to be used in the project directory.
    $ virtualenv .venv
    $ source .venv/Scripts/activate

    # In the virtual environment;
    $ pip install pygame==1.9.2

    # Run the game.
    $ python Color\ Tower\ Defense.py

## One big bug at the hot key

I found a bug in the original README about the hot key for starting a new wave. The hot key is actually N, not Spacebar or ESC.
Clicking the "NEW WAVE" at the top-right works fine.

## The original README is below

Color Tower Defense is a game where you must use unique towers to defend off the waves of invading enemies.

![screenshot of game](http://pygame.org/shots/1688.png)

Upgrade your towers into one of the many choices for increased firepower.

The more difficult levels require quick placement and selling of towers in order for them to keep the enemies in range and to be most effective.

Hotkeys:

- B - enter build tower mode
- Right click - exit build tower mode
- Spacebar, ESC - exit build tower mode
- N - starts new wave
- 1, 2, 3 - upgrade selected tower
- S, 4 - sell selected tower
- P - pause game

the source download runs on mac and windows

run Color Tower Defense.py

Follow our progress at:
http://madcloudgames.blogspot.com/

or email us at:
madcloudgames@gmail.com
