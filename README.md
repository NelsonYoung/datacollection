## data collection and save to mysql.

Usage:

1> Download the source code.
  > git clone https://github.com/slient2010/datacollection.git
  > cd datacollection/mysite

2> Install the requirement softwares.
   > yum install mysql-server
   > yum install redis
   > pip install -r requirements.txt

3> Migrate the project.
  > python manage.py migrate

  Note: For test, we create a test database in mysql and create a table test. the test table shedule under blow:
  =====delimter start======
      CREATE TABLE `test` (
      `lid` char(100) NOT NULL,
      `logname` char(100) NOT NULL,
      `game` char(100) NOT NULL,
      `thread` char(100) NOT NULL,
      `loglevel` char(10) NOT NULL,
      `logtime` char(100) NOT NULL,
      `loginfo` longtext NOT NULL,
      PRIMARY KEY (`lid`,`logtime`)
      ) ENGINE=InnoDB DEFAULT CHARSET=utf8 
  =====delimter end======

4> Create an django administrator.
  > python manage.py createsuperuser

5> Start other applications like mysql, redis, etc.
  > service mysqld start
  > service redis-server start

6> Change the client user and security key.
  The configuration file path is ./mysite/polls/sheduled/config.py

7> Run the django application.
  > python manage.py runserver 0.0.0.0:80

8> Run djcelery and djcelery beat.
  > su mysql -c "python manage.py celery worker --loglevel=info"
  > python manage.py celery beat

  Note: celery worker can not run as root, so need to use normal user, here, for example, I used mysql.

9> setting shedule
   login the django administrate web. 
   http://127.0.0.1:80/admin/
   (1) At the "DJCELERY" column, select "Periodic tasks"
   (2) Add PERIODIC TASK
   
10> Check the result.

