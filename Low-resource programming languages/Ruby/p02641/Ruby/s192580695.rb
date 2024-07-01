x, n = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)
index = Array.new(100, true)

arr.each_index do |i|
  index[arr[i]-1] = false
end

if index[x-1]
  puts x
else
  size = [x, 100-x].max
  for i in 1..size do
    small = (x-1)-i 
    big = (x-1)+i
    if small < 0 then puts -1; break end
    if big >= 100 then puts 101; break end
    if index[small]
      puts small+1
      break
    elsif index[big]
      puts big+1
      break
    end
  end
end