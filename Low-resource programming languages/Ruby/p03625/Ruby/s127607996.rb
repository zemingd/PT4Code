n = gets.to_i
an = gets.split.map(&:to_i)
edges = []

w = 0
h = 0
an.uniq.sort{|a,b| b <=> a}.each do |i|
  if an.count(i) > 1 && h == 0
    h = i
    next
  end
  if an.count(i) > 1
    w = i
    puts h * w
    exit
  end
end

puts 0