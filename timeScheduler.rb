def time_scheduler(array)
  result = []
  events = array.each_slice(2).to_a
  sort_events = events.sort_by { |h| h[1] }
  result.push(sort_events[0])
  i = 0
  j = 1
  while j < sort_events.length && i < result.length do 
    if result[i][1] < sort_events[j][0]
      result.push(sort_events[j])
      i = i +1
      j = j +1
    else 
      j = j +1
    end
  end
  return result
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]