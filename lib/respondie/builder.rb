class Respondie::Builder
  
  def initialize(pattern, controller)
    @pattern = pattern
    custom = Class.new(ActionController::Responder)
    controller.responder = custom
    @responder = controller.responder
  end
  
  def method_missing(sym)
    trait sym
  end
  
  private
  
  def trait(sym)
    type = @pattern.gsub(/\$trait\$/, sym.to_s.camelize)
    @responder.send :include, type.constantize
    self
  end
  
end
