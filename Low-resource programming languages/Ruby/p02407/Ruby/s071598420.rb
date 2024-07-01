n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
if n < a.length
  while a.length > n do
    a.pop
  end
end
b = a.reverse
b.each_with_index do |b, idx|
  printf idx != n ? "#{b} " : "#{b}"
end