s = gets.split('')
k = gets.to_i

s.each do |n|
  if n == 1
    k -= 1
  else
    puts n
    exit 0
  end
end