kind: manual

build-depends:
- alpine.bst

variables:
  notparallel: True

environment:
  MAXJOBS: '%{max-jobs}'

environment-nocache:
- MAXJOBS

config:
  install-commands:
  - echo $MAXJOBS > %{install-root}/environment
