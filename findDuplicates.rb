def duplicates(arr1, arr2)
  
  arr1.each do |x| 
    arr2.each_with_index do |y, i| 
      if x === y
        arr2.delete_at(i)
        break
      end
    end
  end
  
  return arr2.sort
  
end

p duplicates([203, 204, 205, 206, 207, 208, 203, 204, 205, 206], [203, 204, 204, 205, 206, 207, 205, 208, 203, 206, 204, 205, 206])
# => [204, 205, 206]