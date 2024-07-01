N = gets.to_i
A = (N-1).times.map { gets.split(' ').map(&:to_i) }

ret = Array.new(N)
A.each do |e|
  if e[2].even?
    if !ret[e[0] - 1].nil?
      ret[e[1] - 1] = ret[e[0] - 1]
      next
    end
    if !ret[e[1] - 1].nil?
      ret[e[0] - 1] = ret[e[1] - 1]
      next
    end
    ret[e[0] - 1] = 0
    ret[e[1] - 1] = 0
  else
    if !ret[e[0] - 1].nil?
      ret[e[1] - 1] = (ret[e[0] - 1] == 0 ? 1 : 0)
      next
    end
    if !ret[e[1] - 1].nil?
      ret[e[0] - 1] = (ret[e[1] - 1] == 0 ? 1 : 0)
      next
    end
    ret[e[0] - 1] = 0
    ret[e[1] - 1] = 1
  end
end
ret.each { |n| puts n }