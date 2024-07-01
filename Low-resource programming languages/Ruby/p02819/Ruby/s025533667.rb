require 'prime'

a = gets.to_i
check = Prime.prime?(a)
while !check
  a = a + 1
  check = Prime.prime?(a)
end
print("#{a}\n")