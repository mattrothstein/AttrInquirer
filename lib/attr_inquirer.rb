require "attr_inquirer/version"

module AttrInquirer
  class Error < StandardError; end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def attr_inquirer(attribute_name)
      define_method("#{attribute_name}") do
        value = instance_variable_get("@#{attribute_name}")
        ActiveSupport::StringInquirer.new(value)
      end
    end
  end
end

String.include(AttrInquirer)
