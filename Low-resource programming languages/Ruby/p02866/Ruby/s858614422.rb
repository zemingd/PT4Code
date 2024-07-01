n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i)

counts = Array.new(d.max + 1, 0)
d.each do |di|
  counts[di] += 1
end

sum = 1
counts.each_cons(2) do |ai, aj|
  if ai.zero? && !aj.zero?
    puts 0
    exit
  elsif !aj.zero?
    sum = (sum * ai ** aj) % 998244353
  end
end
puts sum
