module Types
  class Collection < BaseObject
  
    def self.create type
      Class.new self do
        graphql_name "#{type.graphql_name}Collection"
        field :collection, [type], null: false
        field :metadata, Metadata, null: false
      end
    end
  end
end
