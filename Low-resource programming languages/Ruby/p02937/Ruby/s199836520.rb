#n, q = gets.chomp.split(" ").map(&:to_i);
s = gets.chomp
t = gets.chomp

# validate
t.each_char do |c|
  unless s.include?(c)
    puts "-1"
    exit 0
  end
end

count = 0
s_index = 0
t_index = 0

while true do
  if count > s.size*(10**100)
    puts "-1"
    exit 0
  end
      if (t_index == (t.size))
    break
  end
  
  result = s.index(t[t_index], s_index)
  unless result.nil?
    count += (result + 1) - s_index
#    puts "c:" + count.to_s + ":" + t[t_index]
    s_index = (result + 1)
    t_index += 1
  else
    count += s.size - s_index
 #   puts "l:" + count.to_s + ":" + t[t_index]

    s_index = 0
  end
end

puts count