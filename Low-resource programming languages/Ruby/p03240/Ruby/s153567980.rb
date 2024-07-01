n, T = gets.chomp.split(' ').map(&:to_i)
x = []
y = []
h = []
min = nil
for i in 0...n do
  x[i], y[i], h[i] = gets.chomp.split(' ').map(&:to_i)
end

for i in 0..100
  for j in 0..100
    hs = []
    for k in 0..(x.size - 1) do

      hi = (i - x[k]).abs + (j - y[k]).abs + h[k]
      hs << hi
    end
    if hs.uniq.size == 1
      puts "#{i} #{j} #{hs[0]}"
      exit
    end
  end
end