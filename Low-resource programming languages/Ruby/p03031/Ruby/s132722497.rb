result = 0
n, m = gets.chomp.split(' ').map(&:to_i)
data = []
m.times do
  a = gets.chomp.split(' ').map(&:to_i)
  data.push(a)
end
status = gets.chomp.split(' ').map(&:to_i)

stack = []
for j in 1..n
  init = [j]
  stack.push(init)
  while !stack.empty?
    ary = stack.pop()
    s = []
    data.each_with_index do |d, i|
      s.push(true) if (ary & d.slice(1, d.length - 1)).length % 2 == status[i]
    end
    result += 1 if s.length == m
    for i in ary[ary.length - 1]+1..n
      tmp = Marshal.load(Marshal.dump(ary))
      stack.push(tmp.push(i))
    end
  end
end
p result