def hanoi_steps(number_of_discs)
    n = number_of_discs
    starting = 1
    free = 2
    goal = 3
    move(n, starting, goal, free)
end

def move(n, starting, goal, free)
    if n == 1
        puts "#{starting}->#{goal}"
    else
        move(n-1, starting, free, goal)
        move(1, starting, goal, free)
        move(n-1, free, goal, starting)
    end
end
  
  hanoi_steps(2)
  # => 1->2 
  #    1->3 
  #    2->3
  
  hanoi_steps(3)
  # => 1->3 
  #    1->2
  #    3->2
  #    1->3
  #    2->1
  #    2->3
  #    1->3
  
  hanoi_steps(4)
  # => 1->2
  #    1->3
  #    2->3
  #    1->2
  #    3->1
  #    3->2
  #    1->2
  #    1->3
  #    2->3
  #    2->1
  #    3->1
  #    2->3
  #    1->2
  #    1->3
  #    2->3