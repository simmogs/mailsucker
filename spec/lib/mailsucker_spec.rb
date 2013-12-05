require 'spec_helper'

describe Mailsucker do
  it "should return a version number" do
    Mailsucker::VERSION.should =~ /^\d+\.\d+\.\d+$/
  end
end
