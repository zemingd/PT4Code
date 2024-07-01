n = gets.to_i
max = 0
arr = gets.chomp.split(' ').map(&:to_i)
arr.each do |num|
  i = 0
  while true
    if num % (2 ** (i+1)) != 0
      max += i
      break
    end
    i += 1
  end
end
puts max