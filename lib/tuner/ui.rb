require "terminal-table"

module Tuner
  class UI
    def initialize
      @output = $stdout
    end

    def say(*str)
      str = str.join if str.is_a? Array
      @output.puts "#{str}"
    end

    def debug(str)
      @time = DateTime.new
      $stderr.puts "#{@time} [DEBUG]: #{str}"
    end

    def fatal(str)
      debug(str)
      exit(-1)
    end

    def table(headers, data)
      full_table = table do
        self.headings = headers
        data.each do |rows|
          add_row rows
        end
      end
      say(full_table)
    end
  end
end