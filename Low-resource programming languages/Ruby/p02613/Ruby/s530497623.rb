N = gets.to_i
H = Hash.new(0)

N.times do
  s = gets.chomp
  H[s] += 1
end

puts %w/AC WA TLE RE/.map{|s| "#{s} x #{H[s]}" }

