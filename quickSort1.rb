def partition(array)
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
  first.push(number)
  return first.concat last
end

p partition([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]