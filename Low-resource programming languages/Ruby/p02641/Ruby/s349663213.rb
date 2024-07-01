x, n = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)

102.times do |i|
  if !a.include?(x-i)
    puts x-i
    break
  elsif !a.include?(x+i)
    puts x+i
    break
  end
end