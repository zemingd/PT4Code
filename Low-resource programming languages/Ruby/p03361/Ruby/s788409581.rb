h, w = gets.chomp.split(" ").map(&:to_i)

ary = Array.new(h, Array.new(w))

h.times do |i|
  ary[i] = gets.chomp.split("")
end

flag = true

h.times do |i|
  w.times do |j|
    if ary[i][j] == '#'
      flag = false if ary[i][j-1] != '#' && ary[i][j+1] != '#' && ary[i-1][j] != '#' && ary[i+1][j] != '#'
    end
  end
  break if flag == false
end

if flag 
  puts "Yes"
else
  puts "No"
end