n = gets.to_i
arr = gets.split.map(&:to_i)
b = []
arr.each_with_index do |ar,i|
  if i.even?
    b.push(ar)
  else
    b.unshift(ar)
  end
end
if arr.size.odd?
  b.reverse!
end
puts b.join(' ')
