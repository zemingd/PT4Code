n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i)

counts = Array.new(d.max + 1, 0)
d.each do |di|
  counts[di] += 1
end

unless counts[0] == 1
  puts 0
  exit
end

sum = 1
counts.each_cons(2) do |ai, aj|
  if ai.zero? && !aj.zero?
    puts 0
    exit
  elsif !aj.zero?
    sum = (sum * ai ** aj)
  end
end
puts sum % 998244353
