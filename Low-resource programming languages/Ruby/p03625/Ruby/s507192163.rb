N = gets.to_i
a = gets.chomp.split.map(&:to_i)

stick = Hash.new(0)

a.each do |i|
  stick[i] += 1
end

l = stick.select { |k, v| v >= 2 }

if l.size < 2
  puts 0
else
  puts l.sort_by { |k, v| -k }.to_h.keys[0..1].inject(:*)
end
