def hash_table(arr)
  hash = Hash.new { |h, k| h[k] = [] }
  arr.each do |x|
    ind = (x).abs % 11 
    hash[ind].push(x)
  end
  hash_b = hash.sort_by {|k, v| k}
  a = hash_b.map { |key, value| value }
  final = []
  a.each do |x| 
    x.each do |y|
      final.push(y)
    end
  end
  return final
end

p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]