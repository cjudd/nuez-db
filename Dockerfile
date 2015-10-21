FROM mysql:5.5.45

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/

RUN echo America/New_York | tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
RUN echo "lower_case_table_names = 1" >> /etc/mysql/my.cnf

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld"]
