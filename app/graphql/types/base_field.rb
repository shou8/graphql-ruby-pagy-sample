module Types
  class BaseField < GraphQL::Schema::Field
    argument_class Types::BaseArgument

    def initialize **kwargs, &block
      super
      return unless kwargs[:type].is_a? Class
      return unless kwargs[:type] < Collection
      extension PagyExtension
    end
  end
end
