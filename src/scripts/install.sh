Install() {
    echo Installing Trivy v"${PARAM_VERSION}" to "${PARAM_BINDIR}"
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b "${PARAM_BINDIR}" v"${PARAM_VERSION}"
    mkdir -p /tmp
    curl https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/junit.tpl -o /tmp/junit.tpl
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Install
fi
