a, b = STDIN.gets.chomp.split(" ").map{ |a| a.to_i }

sum = 0

for i in 0..1 do                                                          if a >= b then
    sum += a
    a -= 1
  else
    sum += b
    b -= 1
  end
end

p sum
~          