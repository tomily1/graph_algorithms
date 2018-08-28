def insertion_sort(array)
  sorted_array = [array[0]]
  array.delete_at(0)
  array.each do |elem|
    index = 0
    while index < sorted_array.length
      if elem <= sorted_array[index]
        sorted_array.insert(index, elem)
        break
      elsif index == sorted_array.length - 1
        sorted_array.insert(index+1, elem)
        break
      end
      index+=1
    end
  end
  sorted_array
end
array = [1,2,9,7,6,5,3,4]
insertion_sort(array)
