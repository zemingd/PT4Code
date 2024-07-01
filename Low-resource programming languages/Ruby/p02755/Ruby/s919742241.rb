=begin
A B
=end

a, b = gets.chomp.split(" ").map(&:to_i)

for i in (1..1300) do
  if ((i * 0.08).floor == a && (i * 0.10).floor == b)
    puts i
    exit
  end
end

puts(-1)
