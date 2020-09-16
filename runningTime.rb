def running_time(array)
  number = 0
  array.drop(1).each_with_index do |x, i|
    while i >= 0 && array[i] > x do
    array[i + 1] = array[i] 
    i = i -1
    number = number +1
  end
  array[i + 1] = x
  end
  return number
  
end

puts running_time([2, 1, 3, 1, 2])
# => 4