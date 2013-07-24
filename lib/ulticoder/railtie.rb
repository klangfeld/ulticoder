require 'ulticoder/view_helpers'
module Ulticoder
  class Railtie < Rails::Railtie
    initializer "ulticoder.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end