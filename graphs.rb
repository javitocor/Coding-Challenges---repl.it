def graph(hash_graph)
  arr = [0]
  a = hash_graph[0][0]
  arr.push(a)
  while a != 4 do
    a = hash_graph[a][0]
    arr.push(a)
  end
  return arr
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

p graph(hash)
# => [0, 2, 5, 4]