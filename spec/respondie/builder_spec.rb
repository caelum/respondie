require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

class ProductsController
  attr_accessor :responder
end
module Respondie
  module Trait
    module Cute
      def is_cute?
        true
      end
    end
  end
end

describe Respondie::Builder do

  it "should include a type into a responder" do
    controller = ProductsController.new
    Respondie::Builder.new("Respondie::Trait::$trait$", controller).instance_eval { cute }
    controller.responder.instance_method(:is_cute?).should_not be_nil
  end

end
