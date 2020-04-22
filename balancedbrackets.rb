def balanced_brackets?(string)
    stack = []
    string.split('').each do |char|
        if char === '(' || char === '{' || char === '['
            stack << char
        end
        if char === ')' && stack.last === '(' 
            stack.pop
        elsif char === ')' && !stack.include?('(')
          return false
        end
        if char === ']' && stack.last === '[' 
            stack.pop
        elsif char === ']' && !stack.include?('[')
          return false
        end
        if char === '}' && stack.last === '{' 
            stack.pop
        elsif char === '}' && !stack.include?('{')
          return false
        end
    end
    if stack.none?
      return true
    else
      return false
    end
end

puts balanced_brackets?(')()')
# => true

puts balanced_brackets?('([)]')
# => false

puts balanced_brackets?('[({}){}{})([])]')
# => true