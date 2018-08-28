def merge_sort(arr)
  return arr unless arr.size > 1
    mid = arr.size/2
    a = merge_sort(arr[0...mid])
    b = merge_sort(arr[mid..-1])
    p a 
    p b
    sorted = []
    sorted << (a[0] < b[0] ? a.shift : b.shift) while [a,b].none?{ |arr| arr.empty? }
  sorted + a + b
end
merge_sort([3, 4, 1, 1, 4, 7, 5, 20])
