N = gets.to_i
As = gets.split.map(&:to_i)

m = {}
As.each {|n| m[n] ? m[n] += 1 : m[n] = 1}

m = m.select do |k, v|
  v >= 2
end

a = 0
b = 0
m.keys.sort.reverse.each do |n|
  if m[n] >= 4 && a != 0
    a = n
    b = n
    break
  elsif m[n] >= 2
    if a == 0
      a = n
    else
      b = n
      break
    end
  end
end

ans = a > 0 && b > 0 ? a * b : 0
puts ans
