cs = [
[1, 399],
[400, 799],
[800, 1199],
[1200, 1599],
[1600, 1999],
[2000, 2399],
[2400, 2799],
[2800, 3199]]

n = gets
v = [false] * 8
m = 0
gets.chomp.split(' ').map(&:to_i).each do |x|
  if x < 3200
    8.times do |i|
      if cs[i][0] <= x && x <= cs[i][1]
        v[i] = true
        break
      end
    end
  else
    m += 1
  end
end

k = v.select {|b| b}.size
if k == 0 && m > 0
  mn = 1
  mx = [8, m].min
else
  mn = k
  mx = [8, k + m].min
end

puts "#{mn} #{mx}"
