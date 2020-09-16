def merge_sort(array1, array2)
  result = []
  i = 0 
  j = 0 
  
  while i < array1.length && j < array2.length do 
    if array1[i] < array2[j]
      result.push(array1[i])
      i = i + 1
    else 
      result.push(array2[j])
      j = j +1 
    end
  end 
  
  while i < array1.length do 
    result.push(array1[i])
      i = i + 1
  end
  
  while j < array2.length do 
    result.push(array2[j])
      j = j +1 
  end 
  
  return result
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
# => [1, 2, 3, 4, 6, 8, 9, 11]