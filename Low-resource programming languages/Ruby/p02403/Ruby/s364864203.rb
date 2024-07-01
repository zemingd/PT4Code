loop do
h, w = gets.chomp.split.map(&:to_i)
if h ==0 && w ==0
    break
else
    h.times do
        puts "#{"#" * w}"
    end
end
puts ""
end