require 'chef/resource'

class Chef
  class RunContext
    unless method_defined?(:create_child)
      def create_child
        result = dup
        result.resource_collection = Chef::ResourceCollection.new
        result
      end
    end
  end
end
