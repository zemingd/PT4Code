n = gets.chomp.to_i
array = gets.split(" ")
array.map(&:to_i)
n.downto(0) do |i|
    print array[i]
    if i == 0; break; end
    print " "
end
puts
