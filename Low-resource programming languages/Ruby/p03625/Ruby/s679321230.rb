N = gets.to_i
a = gets.chomp.split.map(&:to_i)

stick = Hash.new(0)
l = []

a.each do |i|
  stick[i] += 1

  if stick[i] % 2 == 0
    l << i
  end
end

if l.size < 2
  puts 0
else
  puts l.sort.reverse[0..1].inject(:*)
end
