s = gets.split('')
arr = []

s.each.with_index do |b,i|
  if b == "B"
    arr.pop
  else
    arr.push(b)
  end
end

puts arr.join