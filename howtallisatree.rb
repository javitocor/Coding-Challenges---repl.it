def binary_tree_height(array_tree, index = 0)
    return 0 if array_tree[index].nil? || array_tree[index] == 0
    left_height = binary_tree_height(array_tree, 2*index + 1)
    right_height = binary_tree_height(array_tree, 2*index + 2)
    total_height = 1 + [left_height, right_height].max
end