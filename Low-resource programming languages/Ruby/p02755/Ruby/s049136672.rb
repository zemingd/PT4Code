A, B = gets.split.map(&:to_i)

1.upto(10000) do |x|
  if (x * 8 / 100) == A && (x * 10 / 100) == B
    puts x
    exit
  end
end

puts -1