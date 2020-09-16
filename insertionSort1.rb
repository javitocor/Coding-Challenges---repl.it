def insertion_sort(array)
  length = array.length
  last = array[length-1]
  i = length-2
  while i >= 0 && array[i] > last do
    array[i + 1] = array[i] 
    puts array.join(' ')
    i = i -1
  end
    array[i + 1] = last
    puts array.join(' ')
end

insertion_sort([1, 3, 2])
# => 1 3 3
#    1 2 3

puts '-' * 20

insertion_sort([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9