n, q = gets.split(" ").map(&:to_i)
s = gets.chomp.to_s

ary = []
q.times { ary << gets.split(" ").map(&:to_i)}

ary_num = Array.new(n, 0)
cnt = 0

(n-1).times {|i|
  cnt += 1 if s[i..i+1] == "AC"
  ary_num[i+1] = cnt
}

ary.each {|x|
  puts ary_num[x[1]-1] - ary_num[x[0]-1]
}