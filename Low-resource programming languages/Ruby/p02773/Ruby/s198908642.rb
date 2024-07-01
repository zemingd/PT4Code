n = gets.to_i
s = []
n.times { s << gets.chomp }

polls = s
tally = Hash.new { 0 }

polls.each do |poll|
  tally[poll] += 1
end

max = tally.values.max

answer =
  tally.to_a.map do |key, value|
    next unless value == max

    key
  end

puts answer.compact.sort
