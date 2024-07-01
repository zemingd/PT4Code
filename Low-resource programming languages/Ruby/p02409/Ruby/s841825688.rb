r = [[[]]]
4.times do |i|
  r[i] =[[], [], []]
  3.times do |j|
    r[i][j] = Array.new(10,0)
  end
end
n = gets.to_i
n.times do
  d = gets.split.map(&:to_i)
  r[ d[0]-1 ][ d[1]-1 ][ d[2]-1 ] += d[3]
end
4.times do |i|
  3.times do|j|
    10.times do |k|
      print (" #{r[i][j][k]}")
    end
  puts
  end
break if i == 3
puts "####################"
end
