require 'rails_xss'

Module.class_eval do
  include RailsXss::SafeHelpers
end

require 'rails_xss_helper'
require 'rails_xss_escaping'
require 'av_patch'