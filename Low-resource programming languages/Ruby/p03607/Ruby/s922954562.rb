n = gets.to_i
input = []
n.times do |i|
  input[i] = gets.to_i
end

ret = {  }
input.each do |x|
  if ret.has_key? x
    ret.delete(x)
  else
    ret[x] = true
  end
end
puts ret.size
