require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class ApplicationController < ActionController::Base
end

class MyController < ApplicationController
end

describe Respondie do

  it "should enhance ActionController with its cute method" do
    MyController.should respond_to(:use_trait)
  end

  it "should enhance ActionController with its cute plural method" do
    MyController.should respond_to(:use_traits)
  end

end
