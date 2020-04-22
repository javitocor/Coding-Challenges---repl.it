def sliding_maximum(k, array)   
    maximum = []
    for i in 0..array.length - k do
        max = array[i]
        for j in i + 1...i + k do
            if array[j] > max
                max = array[j]
            end
        end
        maximum.push(max)
    end
    maximum
end

def sliding_maximum(k, array)
    array.each_cons(k).map(&:max)
  end
  
  sliding_maximum(3, [1, 3, 5, 7, 9, 2])
  # => [5, 7, 9, 9]