class BreadthFirstSearch
  attr_reader :tree
  def initialize(tree)
    @tree = tree
  end

  def traverse
    traverse_or_search
  end

  def search(value)
    traverse_or_search(value)
  end

  private

  def traverse_or_search(value=nil)
    result = []
    queue = []
    queue.push(@tree)

    while(queue.size != 0)
      node = queue.shift
      if value.nil?
        result << node.value
      else
        result << node.value if node.value == value
      end 
      node.children.each do |child|
        queue.push(child)
      end
    end
    result
  end
end
