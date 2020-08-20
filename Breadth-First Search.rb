def bfs(graph)
  discovered = []
  queue = []
  path = []
  
  queue.push(0)
  discovered.push(0);
  
  while !queue.empty?
    current = queue.shift
    path.push(current)
    graph[current].each do |node| 
      if !discovered.include? node
        discovered.push(node)
        queue.push(node)
      end
    end
  end
  return path
end


p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]