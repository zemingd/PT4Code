x, n = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

if !arr.include?(x)
  puts x
else
  size = [x, 100-x].max
  for i in 1..size do
    small = x-i 
    big = x+i
    if !arr.include?(small)
      puts small
      break
    end
    if !arr.include?(big)
      puts big
      break
    end
  end
end