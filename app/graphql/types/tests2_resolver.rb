module Types
  class Tests2Resolver < GraphQL::Schema::Resolver

    type Test.collection_type, null: false

    def resolve
      ::Test.all
    end
  end
end
