def advanced_quicksort(array, first = 0, last = array.length - 1)
  if first < last
    pivot = partition(array, first, last)
    puts "#{array}"
    advanced_quicksort(array, first, pivot - 1)
    advanced_quicksort(array, pivot + 1, last)
  end

end

def partition( array, first, last) 
  pivot  = array[last]
  i = first
  j = first
  while i <= last  do 
    if array[i] < pivot
      array[i], array[j] = array[j], array[i]
      j += 1
      i += 1
    else
      i = i + 1 
    end
      
  end
  array[last], array[j] = array[j], array[last]
  j
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9