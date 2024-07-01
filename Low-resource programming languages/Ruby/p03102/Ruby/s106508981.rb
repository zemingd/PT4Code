def hoge() gets.split.map(&:to_i) end
n, m, c = hoge
b = hoge
a = n.times.map{ hoge }

hoge = 0
a.each_with_index do |x, i|
    fuga = c
    x.each_with_index{ |y, j| fuga += y * b[j] }
    hoge += 1 if fuga > 0
end

puts hoge