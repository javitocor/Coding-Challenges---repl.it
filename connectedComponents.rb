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


def connected_graph?(graph)
  length = graph.keys.length  
  if(bfs(graph).length === length)
    return true
  end
  return false  
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true