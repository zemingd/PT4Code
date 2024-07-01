n = gets.to_i
as = gets.split(" ").map(&:to_i)

b = Array.new(n, nil)
flg = true
fi = 0
li = -1
n.times do |i|
  a = as.pop
  if flg
    b[fi] = a
    fi += 1
  else
    b[li] = a
    li -= 1
  end
  flg = !flg
end

puts b.join(" ")