n, m = gets.split.map(&:to_i)
ss = Array.new(n)
cs = Array.new(m)
m.times do |i|
  ss[i], cs[i] = gets.split.map(&:to_i)
end


def func(n,m,ss,cs)
  bool = false
  m.times { |num| bool = true if ss[num] == 1 && cs[num] == 0}
  bool_zero = true
  m.times { |num| bool = false if cs[num] != 0}
  return 0 if bool && n == 1 && bool_zero
  return -1 if bool

  ans = Array.new(n){ 'no' }

  m.times do |i|
    index = ss[i] - 1
    if ans[ index ] != 'no' && ans[ index ] != cs[i]
    return -1
    else
      ans[ index ] = cs[i]
    end
  end

  ans.each_with_index { |num, index| ans[index] = 0 if num == 'no'}
  ans[0] = 1 if ans[0] == 0
  ans.join.to_i
end

puts func(n,m,ss,cs)
