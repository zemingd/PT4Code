while true
h,w =gets.chomp.split.map(&:to_i)
brak if h==0 && w==0

h.times do
puts "#"*w
end
puts

end