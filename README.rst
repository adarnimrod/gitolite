Ansible-gitolite
################

An Ansible role for provisioning gitolite and a readonly cgit web interface
(served by Apache).

Requirements
------------

Debian Jessie.

Role Variables
--------------
::

    gitolite_public_key_path: #Path to the SSH public key for the admin account.

Dependencies
------------

`Common role <https://www.shore.co.il/cgit/ansible-common/>`_
`Apache role <https://www.shore.co.il/cgit/ansible-apache/>`_

Example Playbook
----------------
::

    - hosts: servers
      roles:
      - role: gitolite
        gitolite_public_key: '{{ lookup ("file", "id_rsa.pub") }}'

License
-------

MIT

Author Information
------------------

Nimrod Adar, `contact me <nimrod@shore.co.il>`_ or visit my `website
<https://www.shore.co.il/>`_. Patches are welcome via `git send-email
<http://git-scm.com/book/en/v2/Git-Commands-Email>`_. The repository is located
at: https://www.shore.co.il/cgit/.

TODO
----

- Test repository config with cgit.
- Investigate hook (like deploying, etc.)
- Test integration with ssh_ca.
- Include dependencies in `meta/main.yml` and test.
- Log to syslog.
- Metrics?
