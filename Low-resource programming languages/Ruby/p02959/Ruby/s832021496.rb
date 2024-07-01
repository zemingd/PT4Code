n = gets.to_i

a = gets.chomp.split(" ").map(&:to_i);

b = gets.chomp.split(" ").map(&:to_i);

c = 0

b.each_with_index do |bb, i|
  if bb > a[i]
    bb -= a[i]
    c += a[i]
    if bb > a[i+1]
      c += a[i+1]
    else
      a[i+1] -= bb
      c += bb
    end
  else
    c += bb
  end
end

puts c