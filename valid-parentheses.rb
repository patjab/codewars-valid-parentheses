def valid_parentheses(string)
  sanitize = string.split("").select { |ch| ch == '(' || ch == ')' }.join
  sanitize.split("()")

  removeOneLevel = sanitize.split("()").join

  if sanitize.length == 0
    return true
  elsif sanitize == removeOneLevel
    return false
  end

  valid_parentheses(removeOneLevel)
end
