## Can not find InputPlugin 'postgresql' error

[Can not find InputPlugin 'postgresql' error](https://github.com/embulk/embulk/issues/1001)


```
% mkdir vendor
% embulk mkbundle vendor/bundle
% cd vendor/bundle/
% echo 'gem "embulk-input-postgresql"' >> Gemfile
% embulk bundle
```

```
.
|-- 00README.md
|-- embulk_test.yml
|-- test.dig
`-- vendor
    `-- bundle
        |-- Gemfile
        |-- Gemfile.lock
        |-- embulk
        `-- jruby
```


```yaml
in:
  type: postgresql
  host: localhost
  user: user
  database: embulk_test
  table: users
  password: xxx
out:
  type: stdout
```

```yaml
timezone: Asia/Tokyo
schedule:
  minutes_interval>: 1

+embulk_test:
  sh>: embulk run -b vendor/bundle embulk_test.yml
```


```
digdag scheduler
2018-04-09 13:11:47 +0900: Digdag v0.9.24
2018-04-09 13:11:48 +0900 [INFO] (main): secret encryption engine: disabled
2018-04-09 13:11:49 +0900 [INFO] (main): Added new revision 1
2018-04-09 13:11:49 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-04-09 13:11:49 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2018-04-09 13:11:49 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-04-09 13:11:49 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-04-09 13:12:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=test session_time=2018-04-09T13:12:00+09:00
2018-04-09 13:12:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-04-09T04:11:48.977Z, updatedAt=2018-04-09T04:11:48.977Z, workflowName=test, workflowDefinitionId=1, nextRunTime=2018-04-09T04:12:00Z, nextScheduleTime=2018-04-09T04:12:00Z}, next=ScheduleTime{runTime=2018-04-09T04:13:00Z, time=2018-04-09T04:13:00Z}, lastSessionTime=2018-04-09T04:12:00Z
2018-04-09 13:12:02 +0900 [INFO] (0027@[0:default]+test+embulk_test): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 13:12:02.456 +0900: Embulk v0.9.5
2018-04-09 13:12:03.303 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 13:12:06.297 +0900 [INFO] (0001:transaction): BUNDLE_GEMFILE is being set: "/Users/user/embulk-support/core_1001_plugin_not_found/vendor/bundle/Gemfile"
2018-04-09 13:12:06.300 +0900 [INFO] (0001:transaction): Gem's home and path are being cleared.
2018-04-09 13:12:08.623 +0900 [INFO] (0001:transaction): Loaded plugin embulk-input-postgresql (0.9.1)
2018-04-09 13:12:08.674 +0900 [INFO] (0001:transaction): JDBC Driver = /Users/user/embulk-support/core_1001_plugin_not_found/vendor/bundle/jruby/2.3.0/gems/embulk-input-postgresql-0.9.1/default_jdbc_driver/postgresql-9.4-1205-jdbc41.jar
2018-04-09 13:12:08.682 +0900 [INFO] (0001:transaction): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-04-09 13:12:08.785 +0900 [INFO] (0001:transaction): SQL: SET search_path TO "public"
2018-04-09 13:12:08.800 +0900 [INFO] (0001:transaction): Using JDBC Driver PostgreSQL 9.4 JDBC4.1 (build 1205)
2018-04-09 13:12:08.905 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2018-04-09 13:12:08.913 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2018-04-09 13:12:08.976 +0900 [INFO] (0016:task-0000): Connecting to jdbc:postgresql://localhost:5432/embulk_test options {ApplicationName=embulk-input-postgresql, user=user, password=***, tcpKeepAlive=true, loginTimeout=300, socketTimeout=1800}
2018-04-09 13:12:08.985 +0900 [INFO] (0016:task-0000): SQL: SET search_path TO "public"
2018-04-09 13:12:08.988 +0900 [INFO] (0016:task-0000): SQL: DECLARE cur NO SCROLL CURSOR FOR SELECT * FROM "users"
2018-04-09 13:12:08.991 +0900 [INFO] (0016:task-0000): SQL: FETCH FORWARD 10000 FROM cur
2018-04-09 13:12:08.993 +0900 [INFO] (0016:task-0000): > 0.00 seconds
2018-04-09 13:12:08.998 +0900 [INFO] (0016:task-0000): SQL: FETCH FORWARD 10000 FROM cur
2018-04-09 13:12:09.003 +0900 [INFO] (0016:task-0000): > 0.00 seconds
sample_user1,sample_user1@example.com,
sample_user2,sample_user2@example.com,
sample_user2,sample_user2@example.com,
sample_user1,sample_user1@example.com,1979-12-31
sample_user2,sample_user2@example.com,1000-01-05
sample_user2,sample_user2@example.com,0099-12-29
2018-04-09 13:12:09.006 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2018-04-09 13:12:09.013 +0900 [INFO] (main): Committed.
2018-04-09 13:12:09.013 +0900 [INFO] (main): Next config diff: {"in":{},"out":{}}
^C2018-04-09 13:12:18 +0900 [INFO] (shutdown): Started shutdown process
2018-04-09 13:12:18 +0900 [INFO] (shutdown): Shutting down workflow executor loop
2018-04-09 13:12:18 +0900 [INFO] (shutdown): Closing HTTP listening sockets
2018-04-09 13:12:18 +0900 [INFO] (shutdown): Waiting for completion of running HTTP requests...
2018-04-09 13:12:18 +0900 [INFO] (shutdown): Shutting down HTTP worker threads
2018-04-09 13:12:18 +0900 [INFO] (shutdown): Shutting down system
2018-04-09 13:12:18 +0900 [INFO] (shutdown): Shutdown completed
```

## digdag scheduler in pararallel.


```yaml
timezone: Asia/Tokyo
schedule:
  minutes_interval>: 1

+dircheck:
   sh>: 'echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"'

+test2:
  for_each>:
    TABLE: [A, B, C, D, E,F,G,H,I,J]
  _parallel: true
  _do:
    +task1:
      sh>: 'echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"'
    +task2:
      sh>: embulk run -b vendor/bundle embulk_test.yml
```


```
digdag scheduler
2018-04-09 17:30:12 +0900: Digdag v0.9.24
2018-04-09 17:30:13 +0900 [INFO] (main): secret encryption engine: disabled
2018-04-09 17:30:14 +0900 [INFO] (main): Added new revision 1
2018-04-09 17:30:14 +0900 [INFO] (main): XNIO version 3.3.6.Final
2018-04-09 17:30:14 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2018-04-09 17:30:14 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2018-04-09 17:30:14 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
2018-04-09 17:31:00 +0900 [INFO] (scheduler-0): Starting a new session project id=1 workflow name=test2 session_time=2018-04-09T17:31:00+09:00
2018-04-09 17:31:00 +0900 [INFO] (scheduler-0): Updating next schedule time: sched=StoredSchedule{id=1, projectId=1, createdAt=2018-04-09T08:30:14.205Z, updatedAt=2018-04-09T08:30:14.205Z, workflowName=test2, workflowDefinitionId=1, nextRunTime=2018-04-09T08:31:00Z, nextScheduleTime=2018-04-09T08:31:00Z}, next=ScheduleTime{runTime=2018-04-09T08:32:00Z, time=2018-04-09T08:32:00Z}, lastSessionTime=2018-04-09T08:31:00Z
2018-04-09 17:31:01 +0900 [INFO] (0027@[0:default]+test2+dircheck): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:02 +0900 [INFO] (0027@[0:default]+test2+test2): for_each>: {TABLE=[A, B, C, D, E, F, G, H, I, J]}
2018-04-09 17:31:03 +0900 [INFO] (0027@[0:default]+test2+test2^sub+for-0=TABLE=0=A+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:03 +0900 [INFO] (0031@[0:default]+test2+test2^sub+for-0=TABLE=1=B+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:03 +0900 [INFO] (0032@[0:default]+test2+test2^sub+for-0=TABLE=2=C+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:03 +0900 [INFO] (0033@[0:default]+test2+test2^sub+for-0=TABLE=3=D+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:03 +0900 [INFO] (0039@[0:default]+test2+test2^sub+for-0=TABLE=9=J+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
2018-04-09 17:31:03 +0900 [INFO] (0037@[0:default]+test2+test2^sub+for-0=TABLE=7=H+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:03 +0900 [INFO] (0035@[0:default]+test2+test2^sub+for-0=TABLE=5=F+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:03 +0900 [INFO] (0036@[0:default]+test2+test2^sub+for-0=TABLE=6=G+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:03 +0900 [INFO] (0038@[0:default]+test2+test2^sub+for-0=TABLE=8=I+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** test **
embulk-input-postgresql-0.9.1
*** done ***
*** done ***
2018-04-09 17:31:04 +0900 [INFO] (0034@[0:default]+test2+test2^sub+for-0=TABLE=4=E+task1): sh>: echo "*** test **" ; ls -1 vendor/bundle/jruby/2.3.0/gems/ ; echo "*** done ***"
*** test **
embulk-input-postgresql-0.9.1
*** done ***
2018-04-09 17:31:04 +0900 [INFO] (0027@[0:default]+test2+test2^sub+for-0=TABLE=0=A+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0032@[0:default]+test2+test2^sub+for-0=TABLE=2=C+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0033@[0:default]+test2+test2^sub+for-0=TABLE=3=D+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0036@[0:default]+test2+test2^sub+for-0=TABLE=5=F+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0031@[0:default]+test2+test2^sub+for-0=TABLE=1=B+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0035@[0:default]+test2+test2^sub+for-0=TABLE=9=J+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0039@[0:default]+test2+test2^sub+for-0=TABLE=8=I+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0037@[0:default]+test2+test2^sub+for-0=TABLE=7=H+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0038@[0:default]+test2+test2^sub+for-0=TABLE=6=G+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05 +0900 [INFO] (0034@[0:default]+test2+test2^sub+for-0=TABLE=4=E+task2): sh>: embulk run -b vendor/bundle embulk_test.yml
2018-04-09 17:31:05.925 +0900: Embulk v0.9.5
2018-04-09 17:31:06.350 +0900: Embulk v0.9.5
2018-04-09 17:31:06.294 +0900: Embulk v0.9.5
2018-04-09 17:31:06.450 +0900: Embulk v0.9.5
2018-04-09 17:31:06.518 +0900: Embulk v0.9.5
2018-04-09 17:31:06.600 +0900: Embulk v0.9.5
2018-04-09 17:31:06.612 +0900: Embulk v0.9.5
2018-04-09 17:31:06.578 +0900: Embulk v0.9.5
2018-04-09 17:31:06.668 +0900: Embulk v0.9.5
2018-04-09 17:31:06.884 +0900: Embulk v0.9.5
2018-04-09 17:31:11.504 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:11.661 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:11.798 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:11.937 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:11.965 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:12.016 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:11.976 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:12.126 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:12.182 +0900 [INFO] (main): Started Embulk v0.9.5
2018-04-09 17:31:12.296 +0900 [INFO] (main): Started Embulk v0.9.5
^C2018-04-09 17:31:33 +0900 [INFO] (shutdown): Started shutdown process
2018-04-09 17:31:33 +0900 [INFO] (shutdown): Shutting down workflow executor loop
2018-04-09 17:31:33 +0900 [INFO] (shutdown): Waiting for completion of 10 running tasks...
```

