n, m = gets.split.map(&:to_i)
MS = []
m.times do |i|
  MS << gets.split.map(&:to_i)[1..-1]
end
PS = gets.split.map(&:to_i)

COUNT = []
def call(ary)
  size = (MS.select.with_index do |m, i|
    (m & ary).size%2 == PS[i]
  end).size
  if size == MS.size
    COUNT << 1
  end
end

def add(ary, i)
  if i <= 0
    call(ary)
  else
    tmp_ary = ary.dup
    add(tmp_ary, i-1)
    ary << i
    add(ary, i-1)
  end
end

ary = []
add(ary, n)

puts COUNT.size
