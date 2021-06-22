module Types
	class Pagy
	  include ::Pagy::Backend
	
	  attr_reader :metadata, :collection
	
	  def initialize nodes, page: nil, items: nil
	    @metadata, @collection = paginate nodes, page: page, items: items
	  end
	
	  private
	
	  def paginate nodes, page: nil, items: nil
	    case nodes
	    when ActiveRecord::Relation then pagy nodes, page: page, items: items
	    when Array then pagy_array nodes, page: page, items: items
	    end
	  end
	
	  def params
	    {}
	  end
	end
end
