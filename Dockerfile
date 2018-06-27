FROM ansibleplaybookbundle/apb-base:canary
MAINTAINER Ansible Playbook Bundle Community

RUN pip install shade

ADD playbooks /opt/apb/actions

# Add our role into the ansible roles dir
ADD . /opt/ansible/roles/openstack-runner-apb

RUN chmod -R g=u /opt/{ansible,apb}

USER apb
