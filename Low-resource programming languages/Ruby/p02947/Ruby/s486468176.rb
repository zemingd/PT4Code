n = gets.to_i
s = []
n.times { s << gets.chomp }

sorted_s = s.map { |sn| sn.split("").sort!.join }

counts = sorted_s.uniq.map { |sn| sorted_s.count(sn) } 

answer =
  counts.map do |n|
    if n == 1
      0
    else
      n * (n - 1) / 2
    end
  end

puts answer.inject(:+)
