a, b = gets.chomp.split.map(&:to_i)

1.upto(10000) do |i|
  if (i * (8.0/100)).floor == a && (i * (10.0/100)).floor == b
    p i
    exit
  end
end
p -1
