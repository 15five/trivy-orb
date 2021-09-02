Install() {
    echo Hello "${PARAM_VERSION}"
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin v"${PARAM_VERSION}"
    mkdir /tmp
    curl https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/junit.tpl -o /tmp/junit.tpl
}

# Will not run if sourced for bats-core tests.
# View src/tests for more information.
ORB_TEST_ENV="bats-core"
if [ "${0#*$ORB_TEST_ENV}" == "$0" ]; then
    Install
fi
