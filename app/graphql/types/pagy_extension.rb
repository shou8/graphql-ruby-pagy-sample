module Types
  class PagyExtension < GraphQL::Schema::FieldExtension
  
    def apply
      field.argument :page, Integer, required: false
      field.argument :items, Integer, required: false
    end
  
    def resolve object:, arguments:, **_rest
      args = arguments.dup
      page = args.delete :page
      items = args.delete :items
      obj = yield object, args
      Pagy.new obj, page: page, items: items
    end
  end
end
