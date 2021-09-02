# Runs prior to every test
setup() {
    # Load our script file.
    source ./src/scripts/install.sh
}

@test '1: Installs correctly' {
    # Capture the output of our "Greet" function
    result=$(Install)
    trivy -h
}