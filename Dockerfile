FROM        dokken/centos-8
RUN         yum install git mysql -y
COPY        run.sh /
ENTRYPOINT  ["bash", "/run.sh"]