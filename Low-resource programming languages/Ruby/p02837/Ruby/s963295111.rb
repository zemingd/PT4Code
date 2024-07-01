N = gets.to_i
xys = Array.new(N)
N.times do |i|
  a = gets.to_i
  xys[i] = a.times.map { gets.split.map(&:to_i) }
end

def comb(n, acc = [])
  if n == 0
    return [acc]
  end
  acc2 = acc.dup
  acc.push(true)
  acc2.push(false)
  ret1 = comb(n - 1, acc)
  ret2 = comb(n - 1, acc2)
  ret1 + ret2
end

def is_ok?(bl, xys)
  bl.each.with_index do |b, i|
    next unless b
    list = xys[i]
    list.each do |x, y|
      x -= 1
      return false if y == 1 && bl[x] == false
      return false if y == 0 && bl[x] == true
    end
  end
  true
end

comb1 = comb(N)
ans = 0
comb1.each do |bl|
  if is_ok?(bl, xys)
    c = bl.count { |b| b }
    ans = c if c > ans
  end
end
puts ans
