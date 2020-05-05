def sqrt(number)
    sqrt_recursive(number, 0, number)
  end
  
  def sqrt_recursive(number, min_interval, max_interval)
     
    while min_interval <= max_interval
      middle = (min_interval + max_interval)/2
      if middle*middle == number
        return middle
      elsif middle*middle > number
        max_interval = middle - 1 
      else
        min_interval = middle + 1 
      end
    end
    
  end
  
  puts sqrt(25)
  puts sqrt(7056)