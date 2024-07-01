n=gets.to_i
s=gets.chomp
n.times do |i|
    s = s.tr('A-Z','B-ZA')
end
puts s