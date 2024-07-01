N = gets.to_i
data = Array.new
N.times do |i|
  a = gets.to_i
  if data.include?(a)
    data.delete(a)
  else
    data << a
  end
end
p data.length