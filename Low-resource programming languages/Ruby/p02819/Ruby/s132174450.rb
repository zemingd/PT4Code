require 'prime'
n = gets.chomp.to_i

ans = n
loop do

  if Prime.prime? n
    ans = n
    break
  end
  n += 1
end
print("#{ans}")
