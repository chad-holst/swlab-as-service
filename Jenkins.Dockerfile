FROM jenkins/jenkins:2.361.3-lts-jdk11
RUN jenkins-plugin-cli --plugins \
    pipeline-model-definition \
    github-branch-source:1.8 \
    configuration-as-code:1569.vb_72405b_80249
RUN mkdir ${JENKINS_HOME}/jenkins_casc 
ADD jenkins_casc/* ${JENKINS_HOME}/jenkins_casc
ENV CASC_JENKINS_CONFIG ${JENKINS_HOME}/jenkins_casc
