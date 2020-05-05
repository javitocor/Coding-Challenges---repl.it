def sum(number)
    if number == 0 
      return 0 
    else 
      number + sum(number - 1)
    end
end