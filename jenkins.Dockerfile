FROM jenkins/jenkins:2.361.3-lts-jdk11
RUN jenkins-plugin-cli --plugins \
    pipeline-model-definition \
    github-branch-source:1.8 \
    configuration-as-code:1569.vb_72405b_80249 \
    job-dsl:1.81