def depth_first_search(graph)
  discovered = []
  path = []
  stack = []
  
  stack.push(0)
  discovered.push(0)
  
  while !stack.empty?
    current = stack.pop
    path.push(current)
    graph[current].reverse_each do |node|
      if !discovered.include? node
        discovered.push(node)
        stack.push(node)
      end
    end
  end
  return path
end

p depth_first_search({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 4, 1, 3]