embulk run test.yml.liquid


```
select * from rollback_test;
+------+---------+---------------------+---------------------+----------------------------+
| id   | account | time                | purchase            | comment                    |
+------+---------+---------------------+---------------------+----------------------------+
|    1 |   32864 | 2015-01-28 04:23:49 | 2015-01-27 09:00:00 | embulk                     |
|    2 |   14824 | 2015-01-28 04:01:23 | 2015-01-27 09:00:00 | embulk jruby               |
|    3 |   27559 | 2015-01-28 11:20:02 | 2015-01-28 09:00:00 | Embulk "csv" parser plugin |
|    4 |   11270 | 2015-01-29 20:54:36 | 2015-01-29 09:00:00 | NULL                       |
+------+---------+---------------------+---------------------+----------------------------+
4 rows in set (0.00 sec)
```

```
mysql> alter table time_test add unique(time);
ERROR 1146 (42S02): Table 'embulk_test.time_test' doesn't exist
mysql> alter table rollback_test add unique(time);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

```
embulk run test.yml.liquid
2017-06-05 20:26:41.672 +0900: Embulk v0.8.22
2017-06-05 20:26:44.102 +0900 [INFO] (0001:transaction): Loaded plugin embulk-output-mysql (0.7.8)
2017-06-05 20:26:44.145 +0900 [INFO] (0001:transaction): Listing local files at directory 'hoge/csv' filtering filename by prefix 'sample_'
2017-06-05 20:26:44.147 +0900 [INFO] (0001:transaction): "follow_symlinks" is set false. Note that symbolic links to directories are skipped.
2017-06-05 20:26:44.151 +0900 [INFO] (0001:transaction): Loading files [hoge/csv/sample_01.csv.gz]
2017-06-05 20:26:44.202 +0900 [INFO] (0001:transaction): Using local thread executor with max_threads=8 / output tasks 4 = input tasks 1 * 4
2017-06-05 20:26:44.224 +0900 [INFO] (0001:transaction): Connecting to jdbc:mysql://127.0.0.1:3306/embulk_test options {user=root, tcpKeepAlive=true, useCompression=true, rewriteBatchedStatements=true, connectTimeout=300000, socketTimeout=1800000}
2017-06-05 20:26:44.460 +0900 [INFO] (0001:transaction): Using insert mode
2017-06-05 20:26:44.474 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp000`
2017-06-05 20:26:44.477 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-06-05 20:26:44.482 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE IF NOT EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp000` (`id` BIGINT, `account` BIGINT, `time` timestamp default current_timestamp, `purchase` timestamp default current_timestamp, `comment` TEXT)
2017-06-05 20:26:44.494 +0900 [INFO] (0001:transaction): > 0.01 seconds
2017-06-05 20:26:44.494 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp001`
2017-06-05 20:26:44.495 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-06-05 20:26:44.497 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE IF NOT EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp001` (`id` BIGINT, `account` BIGINT, `time` timestamp default current_timestamp, `purchase` timestamp default current_timestamp, `comment` TEXT)
2017-06-05 20:26:44.513 +0900 [INFO] (0001:transaction): > 0.02 seconds
2017-06-05 20:26:44.513 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp002`
2017-06-05 20:26:44.514 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-06-05 20:26:44.517 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE IF NOT EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp002` (`id` BIGINT, `account` BIGINT, `time` timestamp default current_timestamp, `purchase` timestamp default current_timestamp, `comment` TEXT)
2017-06-05 20:26:44.534 +0900 [INFO] (0001:transaction): > 0.02 seconds
2017-06-05 20:26:44.535 +0900 [INFO] (0001:transaction): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp003`
2017-06-05 20:26:44.536 +0900 [INFO] (0001:transaction): > 0.00 seconds
2017-06-05 20:26:44.540 +0900 [INFO] (0001:transaction): SQL: CREATE TABLE IF NOT EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp003` (`id` BIGINT, `account` BIGINT, `time` timestamp default current_timestamp, `purchase` timestamp default current_timestamp, `comment` TEXT)
2017-06-05 20:26:44.556 +0900 [INFO] (0001:transaction): > 0.02 seconds
2017-06-05 20:26:44.595 +0900 [INFO] (0001:transaction): {done:  0 / 1, running: 0}
2017-06-05 20:26:44.619 +0900 [INFO] (0016:task-0000): Connecting to jdbc:mysql://127.0.0.1:3306/embulk_test options {user=root, tcpKeepAlive=true, useCompression=true, rewriteBatchedStatements=true, connectTimeout=300000, socketTimeout=1800000}
2017-06-05 20:26:44.630 +0900 [INFO] (0016:task-0000): Prepared SQL: INSERT INTO `rollback_test_0000000059353ff401c9c380_bl_tmp000` (`id`, `account`, `time`, `purchase`, `comment`) VALUES (?, ?, ?, ?, ?)
2017-06-05 20:26:44.645 +0900 [INFO] (0016:task-0000): Connecting to jdbc:mysql://127.0.0.1:3306/embulk_test options {user=root, tcpKeepAlive=true, useCompression=true, rewriteBatchedStatements=true, connectTimeout=300000, socketTimeout=1800000}
2017-06-05 20:26:44.652 +0900 [INFO] (0016:task-0000): Prepared SQL: INSERT INTO `rollback_test_0000000059353ff401c9c380_bl_tmp001` (`id`, `account`, `time`, `purchase`, `comment`) VALUES (?, ?, ?, ?, ?)
2017-06-05 20:26:44.653 +0900 [INFO] (0016:task-0000): Connecting to jdbc:mysql://127.0.0.1:3306/embulk_test options {user=root, tcpKeepAlive=true, useCompression=true, rewriteBatchedStatements=true, connectTimeout=300000, socketTimeout=1800000}
2017-06-05 20:26:44.661 +0900 [INFO] (0016:task-0000): Prepared SQL: INSERT INTO `rollback_test_0000000059353ff401c9c380_bl_tmp002` (`id`, `account`, `time`, `purchase`, `comment`) VALUES (?, ?, ?, ?, ?)
2017-06-05 20:26:44.664 +0900 [INFO] (0016:task-0000): Connecting to jdbc:mysql://127.0.0.1:3306/embulk_test options {user=root, tcpKeepAlive=true, useCompression=true, rewriteBatchedStatements=true, connectTimeout=300000, socketTimeout=1800000}
2017-06-05 20:26:44.672 +0900 [INFO] (0016:task-0000): Prepared SQL: INSERT INTO `rollback_test_0000000059353ff401c9c380_bl_tmp003` (`id`, `account`, `time`, `purchase`, `comment`) VALUES (?, ?, ?, ?, ?)
2017-06-05 20:26:44.827 +0900 [INFO] (0016:task-0000): Loading 4 rows
2017-06-05 20:26:44.841 +0900 [INFO] (0016:task-0000): > 0.01 seconds (loaded 4 rows in total)
2017-06-05 20:26:44.845 +0900 [INFO] (0001:transaction): {done:  1 / 1, running: 0}
2017-06-05 20:26:44.845 +0900 [INFO] (0001:transaction): Connecting to jdbc:mysql://127.0.0.1:3306/embulk_test options {user=root, tcpKeepAlive=true, useCompression=true, rewriteBatchedStatements=true, connectTimeout=300000, socketTimeout=2700000}
2017-06-05 20:26:44.864 +0900 [INFO] (0001:transaction): SQL: INSERT INTO `rollback_test` (`id`, `account`, `time`, `purchase`, `comment`) SELECT `id`, `account`, `time`, `purchase`, `comment` FROM `rollback_test_0000000059353ff401c9c380_bl_tmp000` UNION ALL SELECT `id`, `account`, `time`, `purchase`, `comment` FROM `rollback_test_0000000059353ff401c9c380_bl_tmp001` UNION ALL SELECT `id`, `account`, `time`, `purchase`, `comment` FROM `rollback_test_0000000059353ff401c9c380_bl_tmp002` UNION ALL SELECT `id`, `account`, `time`, `purchase`, `comment` FROM `rollback_test_0000000059353ff401c9c380_bl_tmp003`
2017-06-05 20:26:44.881 +0900 [ERROR] (0001:transaction): Operation failed (1062:23000)
2017-06-05 20:26:44.891 +0900 [INFO] (0001:cleanup): Connecting to jdbc:mysql://127.0.0.1:3306/embulk_test options {user=root, tcpKeepAlive=true, useCompression=true, rewriteBatchedStatements=true, connectTimeout=300000, socketTimeout=1800000}
2017-06-05 20:26:44.930 +0900 [INFO] (0001:cleanup): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp000`
2017-06-05 20:26:44.933 +0900 [INFO] (0001:cleanup): > 0.00 seconds
2017-06-05 20:26:44.934 +0900 [INFO] (0001:cleanup): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp001`
2017-06-05 20:26:44.936 +0900 [INFO] (0001:cleanup): > 0.00 seconds
2017-06-05 20:26:44.936 +0900 [INFO] (0001:cleanup): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp002`
2017-06-05 20:26:44.938 +0900 [INFO] (0001:cleanup): > 0.00 seconds
2017-06-05 20:26:44.938 +0900 [INFO] (0001:cleanup): SQL: DROP TABLE IF EXISTS `rollback_test_0000000059353ff401c9c380_bl_tmp003`
2017-06-05 20:26:44.941 +0900 [INFO] (0001:cleanup): > 0.00 seconds
org.embulk.exec.PartialExecutionException: java.lang.RuntimeException: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '2015-01-28 04:23:49' for key 'time'
	at org.embulk.exec.BulkLoader$LoaderState.buildPartialExecuteException(org/embulk/exec/BulkLoader.java:373)
	at org.embulk.exec.BulkLoader.doRun(org/embulk/exec/BulkLoader.java:591)
	at org.embulk.exec.BulkLoader.access$000(org/embulk/exec/BulkLoader.java:33)
	at org.embulk.exec.BulkLoader$1.run(org/embulk/exec/BulkLoader.java:389)
	at org.embulk.exec.BulkLoader$1.run(org/embulk/exec/BulkLoader.java:385)
	at org.embulk.spi.Exec.doWith(org/embulk/spi/Exec.java:25)
	at org.embulk.exec.BulkLoader.run(org/embulk/exec/BulkLoader.java:385)
	at org.embulk.EmbulkEmbed.run(org/embulk/EmbulkEmbed.java:180)
	at java.lang.reflect.Method.invoke(java/lang/reflect/Method.java:498)
	at org.jruby.javasupport.JavaMethod.invokeDirectWithExceptionHandling(org/jruby/javasupport/JavaMethod.java:453)
	at org.jruby.javasupport.JavaMethod.invokeDirect(org/jruby/javasupport/JavaMethod.java:314)
	at RUBY.run(/Users/user/.embulk/bin/embulk!/embulk/runner.rb:84)
	at RUBY.run(/Users/user/.embulk/bin/embulk!/embulk/command/embulk_run.rb:269)
	at RUBY.<main>(/Users/user/.embulk/bin/embulk!/embulk/command/embulk_main.rb:2)
	at org.jruby.Ruby.runInterpreter(org/jruby/Ruby.java:850)
	at org.jruby.Ruby.loadFile(org/jruby/Ruby.java:2976)
	at org.jruby.RubyKernel.requireCommon(org/jruby/RubyKernel.java:963)
	at org.jruby.RubyKernel.require(org/jruby/RubyKernel.java:956)
	at org.jruby.RubyKernel$INVOKER$s$1$0$require19.call(org/jruby/RubyKernel$INVOKER$s$1$0$require19.gen)
	at RUBY.(root)(uri:classloader:/META-INF/jruby.home/lib/ruby/stdlib/rubygems/core_ext/kernel_require.rb:1)
	at Users.user.$_dot_embulk.bin.embulk.embulk.command.embulk_bundle.invokeOther66:require(Users/user/$_dot_embulk/bin/embulk/embulk/command/file:/Users/user/.embulk/bin/embulk!/embulk/command/embulk_bundle.rb:51)
	at Users.user.$_dot_embulk.bin.embulk.embulk.command.embulk_bundle.<main>(file:/Users/user/.embulk/bin/embulk!/embulk/command/embulk_bundle.rb:51)
	at java.lang.invoke.MethodHandle.invokeWithArguments(java/lang/invoke/MethodHandle.java:627)
	at org.jruby.Ruby.runScript(org/jruby/Ruby.java:834)
	at org.jruby.Ruby.runNormally(org/jruby/Ruby.java:749)
	at org.jruby.Ruby.runNormally(org/jruby/Ruby.java:767)
	at org.jruby.Ruby.runFromMain(org/jruby/Ruby.java:580)
	at org.jruby.Main.doRunFromMain(org/jruby/Main.java:425)
	at org.jruby.Main.internalRun(org/jruby/Main.java:313)
	at org.jruby.Main.run(org/jruby/Main.java:242)
	at org.jruby.Main.main(org/jruby/Main.java:204)
	at org.embulk.cli.Main.main(org/embulk/cli/Main.java:23)
Caused by: java.lang.RuntimeException: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '2015-01-28 04:23:49' for key 'time'
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin.commit(AbstractJdbcOutputPlugin.java:419)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin.transaction(AbstractJdbcOutputPlugin.java:356)
	at org.embulk.exec.BulkLoader$4$1$1.transaction(BulkLoader.java:544)
	at org.embulk.exec.LocalExecutorPlugin.transaction(LocalExecutorPlugin.java:54)
	at org.embulk.exec.BulkLoader$4$1.run(BulkLoader.java:539)
	at org.embulk.spi.util.Filters$RecursiveControl.transaction(Filters.java:96)
	at org.embulk.spi.util.Filters.transaction(Filters.java:49)
	at org.embulk.exec.BulkLoader$4.run(BulkLoader.java:533)
	at org.embulk.spi.FileInputRunner$RunnerControl$1$1.run(FileInputRunner.java:126)
	at org.embulk.standards.CsvParserPlugin.transaction(CsvParserPlugin.java:225)
	at org.embulk.spi.FileInputRunner$RunnerControl$1.run(FileInputRunner.java:120)
	at org.embulk.spi.util.Decoders$RecursiveControl.transaction(Decoders.java:77)
	at org.embulk.spi.util.Decoders$RecursiveControl$1.run(Decoders.java:73)
	at org.embulk.standards.GzipFileDecoderPlugin.transaction(GzipFileDecoderPlugin.java:30)
	at org.embulk.spi.util.Decoders$RecursiveControl.transaction(Decoders.java:68)
	at org.embulk.spi.util.Decoders.transaction(Decoders.java:33)
	at org.embulk.spi.FileInputRunner$RunnerControl.run(FileInputRunner.java:117)
	at org.embulk.standards.LocalFileInputPlugin.resume(LocalFileInputPlugin.java:87)
	at org.embulk.standards.LocalFileInputPlugin.transaction(LocalFileInputPlugin.java:77)
	at org.embulk.spi.FileInputRunner.transaction(FileInputRunner.java:67)
	at org.embulk.exec.BulkLoader.doRun(BulkLoader.java:528)
	at org.embulk.exec.BulkLoader.access$000(BulkLoader.java:33)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:389)
	at org.embulk.exec.BulkLoader$1.run(BulkLoader.java:385)
	at org.embulk.spi.Exec.doWith(Exec.java:25)
	at org.embulk.exec.BulkLoader.run(BulkLoader.java:385)
	at org.embulk.EmbulkEmbed.run(EmbulkEmbed.java:180)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.jruby.javasupport.JavaMethod.invokeDirectWithExceptionHandling(JavaMethod.java:453)
	at org.jruby.javasupport.JavaMethod.invokeDirect(JavaMethod.java:314)
	at org.jruby.java.invokers.InstanceMethodInvoker.call(InstanceMethodInvoker.java:46)
	at org.jruby.runtime.callsite.CachingCallSite.cacheAndCall(CachingCallSite.java:338)
	at org.jruby.runtime.callsite.CachingCallSite.call(CachingCallSite.java:163)
	at org.jruby.ir.interpreter.InterpreterEngine.processCall(InterpreterEngine.java:315)
	at org.jruby.ir.interpreter.StartupInterpreterEngine.interpret(StartupInterpreterEngine.java:73)
	at org.jruby.ir.interpreter.InterpreterEngine.interpret(InterpreterEngine.java:90)
	at org.jruby.internal.runtime.methods.MixedModeIRMethod.INTERPRET_METHOD(MixedModeIRMethod.java:214)
	at org.jruby.internal.runtime.methods.MixedModeIRMethod.call(MixedModeIRMethod.java:200)
	at org.jruby.internal.runtime.methods.DynamicMethod.call(DynamicMethod.java:205)
	at org.jruby.runtime.callsite.CachingCallSite.cacheAndCall(CachingCallSite.java:358)
	at org.jruby.runtime.callsite.CachingCallSite.call(CachingCallSite.java:195)
	at org.jruby.ir.interpreter.InterpreterEngine.processCall(InterpreterEngine.java:324)
	at org.jruby.ir.interpreter.StartupInterpreterEngine.interpret(StartupInterpreterEngine.java:73)
	at org.jruby.ir.interpreter.InterpreterEngine.interpret(InterpreterEngine.java:84)
	at org.jruby.internal.runtime.methods.MixedModeIRMethod.INTERPRET_METHOD(MixedModeIRMethod.java:179)
	at org.jruby.internal.runtime.methods.MixedModeIRMethod.call(MixedModeIRMethod.java:165)
	at org.jruby.internal.runtime.methods.DynamicMethod.call(DynamicMethod.java:197)
	at org.jruby.runtime.callsite.CachingCallSite.cacheAndCall(CachingCallSite.java:338)
	at org.jruby.runtime.callsite.CachingCallSite.call(CachingCallSite.java:163)
	at org.jruby.ir.interpreter.InterpreterEngine.processCall(InterpreterEngine.java:315)
	at org.jruby.ir.interpreter.StartupInterpreterEngine.interpret(StartupInterpreterEngine.java:73)
	at org.jruby.ir.interpreter.Interpreter.INTERPRET_ROOT(Interpreter.java:112)
	at org.jruby.ir.interpreter.Interpreter.execute(Interpreter.java:99)
	at org.jruby.ir.interpreter.Interpreter.execute(Interpreter.java:35)
	at org.jruby.ir.IRTranslator.execute(IRTranslator.java:42)
	at org.jruby.Ruby.runInterpreter(Ruby.java:850)
	at org.jruby.Ruby.loadFile(Ruby.java:2976)
	at org.jruby.runtime.load.LibrarySearcher$ResourceLibrary.load(LibrarySearcher.java:243)
	at org.jruby.runtime.load.LibrarySearcher$FoundLibrary.load(LibrarySearcher.java:34)
	at org.jruby.runtime.load.LoadService.tryLoadingLibraryOrScript(LoadService.java:885)
	at org.jruby.runtime.load.LoadService.smartLoadInternal(LoadService.java:525)
	at org.jruby.runtime.load.LoadService.require(LoadService.java:396)
	at org.jruby.RubyKernel.requireCommon(RubyKernel.java:963)
	at org.jruby.RubyKernel.require19(RubyKernel.java:956)
	at org.jruby.RubyKernel$INVOKER$s$1$0$require19.call(RubyKernel$INVOKER$s$1$0$require19.gen)
	at org.jruby.internal.runtime.methods.JavaMethod$JavaMethodOneOrNBlock.call(JavaMethod.java:383)
	at org.jruby.internal.runtime.methods.AliasMethod.call(AliasMethod.java:61)
	at org.jruby.runtime.callsite.CachingCallSite.call(CachingCallSite.java:161)
	at org.jruby.ir.interpreter.InterpreterEngine.processCall(InterpreterEngine.java:315)
	at org.jruby.ir.interpreter.StartupInterpreterEngine.interpret(StartupInterpreterEngine.java:73)
	at org.jruby.ir.interpreter.InterpreterEngine.interpret(InterpreterEngine.java:84)
	at org.jruby.internal.runtime.methods.MixedModeIRMethod.INTERPRET_METHOD(MixedModeIRMethod.java:179)
	at org.jruby.internal.runtime.methods.MixedModeIRMethod.call(MixedModeIRMethod.java:165)
	at org.jruby.internal.runtime.methods.DynamicMethod.call(DynamicMethod.java:197)
	at org.jruby.runtime.callsite.CachingCallSite.cacheAndCall(CachingCallSite.java:338)
	at org.jruby.runtime.callsite.CachingCallSite.call(CachingCallSite.java:163)
	at Users.user.$_dot_embulk.bin.embulk.embulk.command.embulk_bundle.invokeOther66:require(file:/Users/user/.embulk/bin/embulk!/embulk/command/embulk_bundle.rb:51)
	at Users.user.$_dot_embulk.bin.embulk.embulk.command.embulk_bundle.RUBY$script(file:/Users/user/.embulk/bin/embulk!/embulk/command/embulk_bundle.rb:51)
	at java.lang.invoke.MethodHandle.invokeWithArguments(MethodHandle.java:627)
	at org.jruby.ir.Compiler$1.load(Compiler.java:111)
	at org.jruby.Ruby.runScript(Ruby.java:834)
	at org.jruby.Ruby.runNormally(Ruby.java:749)
	at org.jruby.Ruby.runNormally(Ruby.java:767)
	at org.jruby.Ruby.runFromMain(Ruby.java:580)
	at org.jruby.Main.doRunFromMain(Main.java:425)
	at org.jruby.Main.internalRun(Main.java:313)
	at org.jruby.Main.run(Main.java:242)
	at org.jruby.Main.main(Main.java:204)
	at org.embulk.cli.Main.main(Main.java:23)
Caused by: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '2015-01-28 04:23:49' for key 'time'
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:423)
	at com.mysql.jdbc.Util.handleNewInstance(Util.java:377)
	at com.mysql.jdbc.Util.getInstance(Util.java:360)
	at com.mysql.jdbc.SQLError.createSQLException(SQLError.java:971)
	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3887)
	at com.mysql.jdbc.MysqlIO.checkErrorPacket(MysqlIO.java:3823)
	at com.mysql.jdbc.MysqlIO.sendCommand(MysqlIO.java:2435)
	at com.mysql.jdbc.MysqlIO.sqlQueryDirect(MysqlIO.java:2582)
	at com.mysql.jdbc.ConnectionImpl.execSQL(ConnectionImpl.java:2526)
	at com.mysql.jdbc.StatementImpl.executeUpdate(StatementImpl.java:1618)
	at com.mysql.jdbc.StatementImpl.executeUpdate(StatementImpl.java:1549)
	at org.embulk.output.jdbc.JdbcOutputConnection.executeUpdate(JdbcOutputConnection.java:513)
	at org.embulk.output.jdbc.JdbcOutputConnection.collectInsert(JdbcOutputConnection.java:315)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin.doCommit(AbstractJdbcOutputPlugin.java:700)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin$2.run(AbstractJdbcOutputPlugin.java:412)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin$RetryableSQLExecution.call(AbstractJdbcOutputPlugin.java:1088)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin$RetryableSQLExecution.call(AbstractJdbcOutputPlugin.java:1076)
	at org.embulk.spi.util.RetryExecutor.run(RetryExecutor.java:100)
	at org.embulk.spi.util.RetryExecutor.runInterruptible(RetryExecutor.java:77)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin.withRetry(AbstractJdbcOutputPlugin.java:1060)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin.withRetry(AbstractJdbcOutputPlugin.java:1053)
	at org.embulk.output.jdbc.AbstractJdbcOutputPlugin.commit(AbstractJdbcOutputPlugin.java:407)
	... 91 more

Error: java.lang.RuntimeException: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '2015-01-28 04:23:49' for key 'time'
% echo $?
1
```
