n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
b = a.reverse
b.each_with_index do |b, idx|
  printf idx != n ? "#{b} " : "#{b}"
end
printf "\n"