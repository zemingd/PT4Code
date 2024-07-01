N, Y = gets.split.map(&:to_i)
money = Y.dup
# binding.pry
0.upto(N) do |x|
  0.upto(N - x) do |y|
    z = (Y - (10000 * x + 5000 * y)) / 1000
    # p "#{x},#{y},#{z}"
    if z >= 0 && x + y + z == N
      puts "#{x} #{y} #{z}"
      exit
    end
  end
end
puts "-1 -1 -1"