require 'hirb'
require 'pry'

class << Hirb::View
  alias_method :enable_output_method_existing, :enable_output_method
  alias_method :disable_output_method_existing, :disable_output_method

  def enable_output_method
    @output_method = true
    JazzierHands._hirb_output = true
    enable_output_method_existing
  end

  def disable_output_method
    JazzierHands._hirb_output = false
    disable_output_method_existing
  end
end
