require 'multi_parameter_attributes'
class ApplicationController < ActionController::Base
  include MultiParameterAttributes
  protect_from_forgery
end
