def find_pairs(array, k)
  arr2 = []
  arr2.push(k)
  return array.uniq.combination(2).select { |n,m| arr2.include?(n+m) }
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]