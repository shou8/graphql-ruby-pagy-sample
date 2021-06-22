module Types
  class Tests1Resolver < GraphQL::Schema::Resolver

    type Test.connection_type, null: false

    def resolve
      ::Test.all
    end
  end
end
