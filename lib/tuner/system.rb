require 'ohai'

module Tuner
  class System
    def initialize
      @ohai = Ohai::System.new
      @ohai.all_plugins
      Tuner.ui.say @ohai.inspect
    end
  end
end