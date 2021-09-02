# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/install.sh
}

@test '1: Installs correctly' {
    # mock params
    export PARAM_VERSION=0.19.2
    export PARAM_BINDIR=.
    # Capture the output of our "Install" function
    result=$(Install)
    ./trivy -h
}