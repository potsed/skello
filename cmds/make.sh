#!/bin/bash
__help() {
    # Echo out the skello make help info
    exit 0;
}

run_make() {
    #### Run the make command: ####

    # What is the folder name?
    # What is the project name?
    read -p "Give the project a name: " GIVEN_PROJECT_NAME;
    #1. cp the current directory to the ~/.skello/projects/[PROJECT-NAME]
    read -p "Directory to skel [`pwd`]: " GIVEN_DIRECTORY_NAME;
    GIVEN_DIRECTORY_NAME="$(echo -e "${GIVEN_DIRECTORY_NAME}" | tr -d '[:space:]')";
    if [ "$GIVEN_DIRECTORY_NAME" == "" ]; then
        GIVEN_DIRECTORY_NAME=`pwd`;
    fi

    echo $GIVEN_DIRECTORY_NAME;
}