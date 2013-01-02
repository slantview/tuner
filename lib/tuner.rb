require "tuner/version"
require "tuner/ui"
require "tuner/tasks"

module Tuner
  class << self
    def ui
      @ui ||= Tuner::UI.new
    end
  end
end