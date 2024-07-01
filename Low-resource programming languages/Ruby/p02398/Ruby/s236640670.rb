num = 0
a,b,c = gets.split(/\s/).map(&:to_i)  
while a <= b
    if c%a == 0
      num += 1
    end
      a += 1
  end
puts num