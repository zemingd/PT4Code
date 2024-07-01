n = gets.to_i

c = Array.new(4){Array.new(3){Array.new(10, 0)}}

n.times do
  a, b, f, d = gets.split(" ").map(&:to_i)
  c[a-1][b-1][f-1] += d
end

4.times do |i|
  3.times do |j|
    10.times do |k|
      print " #{c[i][j][k]}"
    end
    puts
  end
  puts "#" * 20 if i != 3
end

