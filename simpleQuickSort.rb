def simple_quicksort(array)
  return array if array.length <= 1
  number  = array[0]
  first = []
  last = []
  array.drop(1).each do |x| 
    if x < number
      first.push(x)
    else 
      last.push(x)
    end
  end
  final = simple_quicksort(first).push(number) + simple_quicksort(last)
  puts final.join(' ')
  return final
end

  
p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10