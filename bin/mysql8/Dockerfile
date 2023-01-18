FROM mysql:8.0.31-debian

COPY ./config/initdb/init_mysql.sql /tmp

RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf

RUN chown -R mysql:mysql /var/lib/mysql

# RUN service mysql restart

# CMD ["mysqld", "--init-file=/tmp/init_mysql.sql"]