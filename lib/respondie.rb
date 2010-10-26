require 'action_controller'

module Respondie
  
  def use_trait(&block)
    Respondie::Builder.new("Respondie::Trait::$trait$", self).instance_eval(&block)
  end
  
  alias_method :use_traits, :use_trait
  
end

ActionController::Base.extend Respondie

require 'respondie/builder'