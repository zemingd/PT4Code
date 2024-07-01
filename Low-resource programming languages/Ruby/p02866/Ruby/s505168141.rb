n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i)

counts = []
d.size.times do |i|
  counts[i] = d.count { |di| di == i}
end

sum = 1
counts.each_cons(2) do |ai, aj|
  if ai.zero? && !aj.zero?
    puts 0
    exit
  elsif !aj.zero?
    sum *= ai ** aj
  end
end
puts sum
