n,k = gets.chomp.split(" ").map(&:to_i)
d = gets.chomp.split(" ")
loop do
  f = 0
  d.each do |num|
    if n.to_s.include?(num)
      f = 1
      break
    end
  end
  if f == 0
    puts n
    exit
  end
  n += 1
end