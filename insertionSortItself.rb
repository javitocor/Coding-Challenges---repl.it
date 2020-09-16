def sort_itself(array)
  array.drop(1).each_with_index do |x, i|
    while i >= 0 && array[i] > x do
    array[i + 1] = array[i] 
    i = i -1
  end
  array[i + 1] = x
    puts array.join(' ')
  end
  
end

sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9