N, M = gets.split(' ').map(&:to_i)

lst = []
N.times do
  lst << gets.split(' ').map(&:to_i)
end

ret = lst.each_with_index.reduce([]) do |a, (e, i)|
  a2 = []
  if i == 0
    a2 = e[1..-1]
  else
    e.each_with_index do |i, j|
      next if j == 0
      if a.include?(i)
        a2 << i
      end
    end
  end
  a2
end
p ret.nil? ? 0 : ret.size
