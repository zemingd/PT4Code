N = gets.to_i

def s(n)
  sum = 0
  while n != 0
    sum += n%10
    n = n/10
  end
  sum
end

if N%s(N) == 0
  puts 'Yes'
else
  puts 'No'
end