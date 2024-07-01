n,l = gets.chomp.split.map(&:to_i)
azi = []
n.times do |i|
    azi << l + i
end
sum = azi.inject(:+)
azi.sort! {|a, b| a.abs <=> b.abs}
puts sum - azi[0]
