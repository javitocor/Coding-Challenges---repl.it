def full_merge_sort(array)
  mergesort(array).map { |x| x.split[1] }
end

def mergesort(array) 
  return array if array.length <= 1 
  
  pivot = array.length / 2 
  
  first = mergesort(array.slice(0, pivot))
  last = mergesort(array.slice(pivot, array.length))
  
  merge(first, last)
end 

def merge(first, last)
  return first if last.none?
  return last if first.none?
  
  if first[0].split[0].to_i <= last[0].split[0].to_i
    [first.first] + merge(first[1..-1], last)
  else 
    [last.first] + merge(first, last[1..-1])
  end
  
end

full_merge_sort(["0 ab", "6 cd", "0 ef", "6 gh", "4 ij", "0 ab", "6 cd", "0 ef", "6 gh", "0 ij", "4 that", "3 be", "0 to", "1 be", "5 question", "1 or", "2 not", "4 is", "2 to", "4 the"])
# => ["ab", "ef", "ab", "ef", "ij", "to", "be", "or", "not", "to", "be", "ij", "that", "is", "the", "question", "cd", "gh", "cd", "gh"]
