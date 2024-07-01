A, B = gets.chomp.split(" ").map(&:to_i)

1.upto(100) do |i|
  if (i * 0.08).floor == A && (i * 0.1).floor == B
    puts i
    exit
  end
end

puts -1
