# frozen_string_literal: true
require 'rubygems'

begin
  gem 'rdoc'
rescue Gem::LoadError
  # swallow
end

begin
  require 'rdoc/rubygems_hook'
  module Gem
    RDoc = ::RDoc::RubygemsHook
  end

  Gem.done_installing(&Gem::RDoc.method(:generation_hook))
rescue LoadError
end
