module Types
  class Metadata < BaseObject
  
    field :count, Integer, null: false
    field :page, Integer, null: false
    field :items, Integer, null: false
    field :pages, Integer, null: false
    field :last, Integer, null: false
    field :offset, Integer, null: false
    field :from, Integer, null: false
    field :to, Integer, null: false
    field :prev, Integer, null: true
    field :next, Integer, null: true, resolver_method: :object_next
  
    delegate :next, to: :object, prefix: true
  end
end
