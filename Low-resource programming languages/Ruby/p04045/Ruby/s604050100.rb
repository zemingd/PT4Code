def check(hate, x)
  x.to_s.chars.each do |i|
    if hate.include?(i)
      return false
    end
  end
  return true
end

n, k = gets.split.map(&:to_i)
hate = gets.split.map


while !check(hate, n)
  n += 1
end

puts n
