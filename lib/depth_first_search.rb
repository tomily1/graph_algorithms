class DepthFirstSearch
  attr_reader :tree, :value, :result

  def initialize(tree)
    @tree = tree
  end

  def traverse
    @value = nil
    empty_result
    traverse_or_search(@tree)
    result
  end

  def search(value)
    @value = value
    empty_result
    traverse_or_search(@tree)
    result
  end

  private

  def empty_result
    @result = []
  end

  def traverse_or_search(node)
    if @value.nil?
      result << node.value
    else
      result << node.value if @value == node.value
    end
    node.children.each do |child|
      traverse_or_search(child)
    end
  end
end
