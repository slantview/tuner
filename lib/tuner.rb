require "tuner/version"
require "tuner/ui"

module Tuner
  def ui
    @ui ||= Tuner::UI.new
  end
end