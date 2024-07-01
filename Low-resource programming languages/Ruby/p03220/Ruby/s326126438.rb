n = gets.to_i
t, a = gets.split.map(&:to_f)
x = gets.split.map(&:to_f)
x = x.map{|x| t-x*0.006}
r = 0
min = 100000
x.each_with_index do |x, i|
  hoge = (x-a).abs
  if hoge < min
    min = hoge
    r = i+1
  end
end
p r