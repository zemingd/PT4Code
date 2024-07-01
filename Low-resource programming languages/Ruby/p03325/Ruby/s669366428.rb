N = gets.to_i
a = gets.split.map(&:to_i)

cnt = 0
loop do
  divided = false
  N.times do |i|
    if !divided && a[i].even?
      a[i] /= 2
      divided = true
      next
    end

    a[i] *= 3
  end
  if divided
    cnt += 1
  else
    break
  end
end

puts cnt