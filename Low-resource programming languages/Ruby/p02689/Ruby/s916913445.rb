n, m = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)
ary = []
m.times {ary << gets.split(" ").map(&:to_i)}

ary_flag = Array.new(n, 1)
ary.each {|x|
  if h[x[0]-1] == h[x[1]-1]
    ary_flag[x[0]-1] = 0
    ary_flag[x[1]-1] = 0
  elsif h[x[0]-1] > h[x[1]-1]
    ary_flag[x[1]-1] = 0
  elsif h[x[0]-1] < h[x[1]-1]
    ary_flag[x[0]-1] = 0
  end
}

puts ary_flag.count(1)
