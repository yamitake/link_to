require "link_to/version"
require 'action_view'
require 'active_model'
require 'active_support'

module LinkTo
  def a(*args, &block)
    link_to("aiueo", '/')
  end
end

# ActiveSupport.on_load :action_view do
#   include LinkTo
# end
ActionView::Base.send :include, LinkTo
