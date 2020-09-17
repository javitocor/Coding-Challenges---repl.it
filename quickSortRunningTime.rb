def quicksort_running_time(array)
  $number1 = 0 
  $number2 = 0

  sort_itself(array.clone)
  advanced_quicksort(array.clone)
  
  return $number1 - $number2
end

def sort_itself(array)
  array.drop(1).each_with_index do |x, i|
    while i >= 0 && array[i] > x do
    array[i + 1] = array[i] 
    i = i -1
    $number1 += 1
  end
  array[i + 1] = x
    puts array.join(' ')
  end
  
end

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
      $number2 += 1
      j += 1
      i += 1
    else
      i = i + 1 
    end
      
  end
  array[last], array[j] = array[j], array[last]
  $number2 += 1
  j
end

puts quicksort_running_time([1, 3, 9, 8, 2, 7, 5])
# => 1

