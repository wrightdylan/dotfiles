#!/bin/bash

# Set the environment variable for KDE applications
export XDG_MENU_PREFIX=arch-

# Rebuild the KDE service cache
kbuildsycoca6 --noincremental
