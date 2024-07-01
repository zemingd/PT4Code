N, M = gets.split.map(&:to_i)
result = Hash.new(N)
N.times do
  k, *a = gets.split.map(&:to_i)
  a.each do |i|
    result[i] -= 1
  end
end
puts result.select{|k,v| v == 0}.size
