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

    def table(headers, rows, title = nil, style = {})
      table = Terminal::Table.new
      table.title = title unless title.nil?
      table.headings = headers
      table.rows = rows
      table.style = style
      
      say(table)
    end
  end
end