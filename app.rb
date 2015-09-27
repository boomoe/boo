require 'rubygems'
require 'bundler'

Bundler.require

module Moe
  class Boo < Hobbit::Base
    include Hobbit::Render

    get '/' do
      render :home
    end
  end
end
