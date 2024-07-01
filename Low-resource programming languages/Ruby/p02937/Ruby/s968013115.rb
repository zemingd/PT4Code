s = gets.chomp.split("")
t = gets.chomp.split("")
spots = Array.new(26) { Array.new }

s.each_with_index do |char, index|
  spots[char.ord - 97] << index + 1
end

current_spot = 0
loop_times = 0

t.each do |char|
  num = char.ord - 97
  if spots[num].empty?
    puts -1
    exit
  end
  current_spot = spots[num].bsearch { |item| item > current_spot }
  unless current_spot
    current_spot = spots[num].first
    loop_times += 1
  end
end

puts s.length * loop_times + current_spot
