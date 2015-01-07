base:
  'master-minion':
    - docker.docker-sock
    - git
    - kibana
    - graphite

  #Common for all minions except the master minion
  '* and not master-minion':
    - match: compound
    - minion
    - munin
    - docker
    - docker.docker-service
    - git

