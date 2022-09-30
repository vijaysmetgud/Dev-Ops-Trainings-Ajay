### PostgreSQL Basic Commands:-

1. **Check version of PostgreSQL**
 
        SELECT version();

2. **Show location of postgresql.conf file1**

        SHOW config_file;

 3. **Show location of data directory1**       

           SHOW data_directory;

4. **how location of log directory (may be a path 
relative to data directory)'**

        
             SHOW log_directory;

4. **List all databases**

          \l

5. **List all tables + table size in bytes in the 
current database**

                \dt+
                \dS+ 

6. **List all roles and privileges in the current database**

                     \du

7. **Check if this server is a standby (in recovery mode)**

       SELECT pg_is_in_recovery();

8. **View connection info**

         \conninfo

9. **Show all available psql help commands**

             \?

 10. **command to start postgres**
       
           services start postgresql   


 11. **command to stop postgres**
        
        
           services stop postgresql                  

 12. **Backup vital tables from ibmcloud Postgres database on pod**

      - pg_dump -h c20870c3-8e4a-476e-8fec-86204e4d9703.c13paqsd05a0ept695ng.databases.appdomain.cloud -p 31139 -U admin -d ibmclouddb --table='"public"."ab_user"' --file=bkp_user

     - pg_dump -h c20870c3-8e4a-476e-8fec-86204e4d9703.c13paqsd05a0ept695ng.databases.appdomain.cloud -p 31139 -U admin -d ibmclouddb --table='"public"."ab_user_role"' --file=bkp_user_role
     
13. **connect to postgres airflow database**

          psql -U airmeta airflow


 14. **check the current connection to postgres / should not be any connection/except mine**
       
          SELECT * FROM pg_stat_activity;          

15. **Drop 4 tables:- after connection to postgres database**

    - DROP TABLE public.ab_user_role;
    - DROP TABLE public.ab_user;
    - DROP TABLE public.variable;
    - DROP TABLE public.connection;

 16. **Restore tables backup from kubernetes Dev /tmp/ to airflow database**  

     - psql -U airmeta -d airflow -1 -f /tmp/bkp_user
     - psql -U airmeta -d airflow -1 -f /tmp/bkp_user_role
     - psql -U airmeta -d airflow -1 -f /tmp/bkp_variable
     - psql -U airmeta -d airflow -1 -f /tmp/bkp_connection   


     