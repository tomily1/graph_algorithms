class Node
  attr_accessor :value, :name, :left, :middle, :right
  def initialize(value, name, options={})
    @value = value
    @name = name
  end

  def children?
    [@left, @right].compact
  end
end
