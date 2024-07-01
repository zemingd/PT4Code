n, sum = STDIN.gets.split(' ').map(&:to_i)

Otoshidama = Struct.new('Otoshidama', :x, :y, :z)

otoshidama = catch(:break_loop) do
  0.upto(n) do |x|
    0.upto(n) do |y|
      z = n - x - y
      next if z < 0

      if 10000*x + 5000*y + 1000*z == sum
        throw :break_loop, Otoshidama.new(x, y, z)
      end
    end
  end
end

if otoshidama.kind_of?(Otoshidama)
  puts "#{otoshidama.x} #{otoshidama.y} #{otoshidama.z}"
else
  puts "-1 -1 -1"
end
