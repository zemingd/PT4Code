#ABC167B_EasyLinearProgramming.rb
a,b,c,k = gets.split.map(&:to_i)
rem = k
if a >= k
  max = 1 * k
  puts max
  exit
else
  max = 1 * a 
  rem = k - a
  if b >= rem
    max += 0 * rem
    puts max
    exit
  else
    max += 0 * b
    rem -= b
    if c >= rem
    max += -1 * rem
    puts max
    exit
    else
      max += -1 * c
    end
  end
end
puts max
