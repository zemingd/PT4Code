n=gets.split(' ').map(&:to_i)
a=gets.split(' ').map(&:to_i)
loop do
  min=a.min
  mini=a.index(min)
  a.map!.with_index {|m, i| mini==i ? m : m % min}
  a.delete(0)
  break if a.size == 1
end

p a[0]
