  def move(starting, goal)
    empty = [1, 2, 3]
    empty.delete(starting)
    empty.delete(goal)
    "#{starting}->#{empty[0]} #{starting}->#{goal} #{empty[0]}->#{goal}"
  end
  def move(starting, goal)
    empty = [1, 2, 3]
    empty.delete(starting)
    empty.delete(goal)
    free= empty[0]
    steps = ""
    steps = "#{starting}->#{free}"+" "
    steps+= "#{starting}->#{goal}"+" "
    steps+= "#{free}->#{goal}"
    steps
  end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3