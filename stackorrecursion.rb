def tree_height(tree_as_list)
    a = (tree_as_list.length/2).floor 
    height = [1]
    return 0 if tree_as_list[0] == 0
    for i in 0..a 
        initial_height = height[i]
    
        left_next = (tree_as_list[2*i + 1] == 0 || tree_as_list[2*i + 1].nil?) ? 0 : (initial_height + 1)
    
        right_next = (tree_as_list[2*i + 2] == 0 || tree_as_list[2*i + 2].nil?) ? 0 : (initial_height + 1)
        height.push(left_next) 
        height.push(right_next) 
    end
    height.delete_if {|x| x == 0}
    height[-1]
end
puts tree_height([2, 7, 5, 2, 6, 0, 9])
# => 3

puts tree_height([1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0])
# => 4

puts tree_height([5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0])
# => 4
