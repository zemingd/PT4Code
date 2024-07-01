N = gets.to_i
data = Hash.new
N.times do |i|
  a = gets.to_i
  if data.include?(a)
    data[a] +=  1
  else
    data[a] = 1
  end
end
p data.values.count{|item| item % 2 != 0}