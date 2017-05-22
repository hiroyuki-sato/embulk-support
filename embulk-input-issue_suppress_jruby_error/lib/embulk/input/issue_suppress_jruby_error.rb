module Embulk
  module Input

    class IssueSuppressJrubyError < InputPlugin
      Plugin.register_input("issue_suppress_jruby_error", self)

      def self.transaction(config, &control)
        # configuration code:
        task = {
        }

        columns = [
          Column.new(0, "example", :string),
          Column.new(1, "column", :long),
          Column.new(2, "value", :double),
        ]

        resume(task, columns, 1, &control)
      end

      def self.resume(task, columns, count, &control)
        task_reports = yield(task, columns, count)

        next_config_diff = {}
        return next_config_diff
      end

      def init
        # initialization code:
      end

      def run

        begin
          err1
        rescue => e
          ::Embulk.logger.error "e: {class:#{e.class},msg:#{e}}"
          ::Embulk.logger.error "e.cause: {class:#{e.cause.class},msg:#{e.cause}}"
          ::Embulk.logger.error "e.cause.cause: {class:#{e.cause.cause.class},msg:#{e.cause.cause}}"
          ::Embulk.logger.error "e.cause.cause.cause: {class:#{e.cause.cause.cause.class},msg:#{e.cause.cause.cause}}"
        end

        task_report = {}
        return task_report
      end

      ### Exception code
      class Error1 < ::StandardError; end

      def err1
        raise Error1, "err"
      end
      
    end

  end
end
