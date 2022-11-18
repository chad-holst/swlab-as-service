FROM jenkins/jenkins:2.361.3-lts-jdk11
RUN jenkins-plugin-cli --plugins \
    pipeline-model-definition \
    github-branch-source:1696.v3a_7603564d04 \
    configuration-as-code:1569.vb_72405b_80249 \
    job-dsl:1.81 \
    blueocean:1.25.8 \
    docker-workflow:528.v7c193a_0b_e67c \
    swarm:3.37 \
    pipeline-stage-view:2.27
