num1 = gets.to_i
num2 = gets.to_i
def math(a,b)
  if a * b %2== 0
    result = "Yes"
  else
    result = "No"
  end
  return result
end
p math(num1,num2)
