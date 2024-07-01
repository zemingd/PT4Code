n = gets
v = [false] * 8
m = 0
gets.chomp.split(' ').map(&:to_i).each do |x|
  if x < 3200
    v[x / 400] = true
  else
    m += 1
  end
end

k = v.select {|b| b}.size
mn = [1, k].max
mx = [8, k + m].min
puts "#{mn} #{mx}"
