require 'thor'
require 'tuner/system'

module Tuner
  class Tasks < Thor

    desc "all", "Evaluate system settings and applications"
    def all(*tasks)
      Tuner.ui.debug tasks
      Tuner.ui.debug Tasks.tasks

      Tuner.ui.debug system
      @all_tasks = Array.new
      if tasks.nil?
        Tasks.tasks.each {|name, t| @all_tasks << name }
      else
        @all_tasks = tasks
      end

      @all_tasks.delete("all", "help")

      @all_tasks.each {|name, t| invoke "#{name}" }
          
      end
    end

    desc "apache", "Evaluate Apache2 settings."
    def apache
      Tuner.ui.say "Evaluating Apache settings."
    end

    desc "nginx", "Evaluate Nginx settings."
    def nginx
      Tuner.ui.say "Evaluating Nginx settings."
    end

    class_option :debug,
      :type => :boolean,
      :default => false,
      :desc => "Turn on debug output."

    private 
    def system
      @system ||= Tuner::System.new
    end

  end
end