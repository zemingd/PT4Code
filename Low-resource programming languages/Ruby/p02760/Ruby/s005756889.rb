Bingos = Array.new(8) { |_i| [] }
A1s = gets.split.map(&:to_i)
Bingos[0] << A1s[0]
Bingos[0] << A1s[1]
Bingos[0] << A1s[2]
Bingos[3] << A1s[0]
Bingos[4] << A1s[1]
Bingos[5] << A1s[2]
Bingos[6] << A1s[0]
Bingos[7] << A1s[2]
A2s = gets.split.map(&:to_i)
Bingos[1] << A2s[0]
Bingos[1] << A2s[1]
Bingos[1] << A2s[2]
Bingos[3] << A2s[0]
Bingos[4] << A2s[1]
Bingos[5] << A2s[2]
Bingos[6] << A2s[1]
Bingos[7] << A2s[1]
A3s = gets.split.map(&:to_i)
Bingos[2] << A3s[0]
Bingos[2] << A3s[1]
Bingos[2] << A3s[2]
Bingos[3] << A3s[0]
Bingos[4] << A3s[1]
Bingos[5] << A3s[2]
Bingos[6] << A3s[2]
Bingos[7] << A3s[0]

hits = (0..7).map { |i| [i, 0] }.to_h

N = gets.to_i

N.times.do |i|
  b = gets.to_i
  (0..7).each do |x|
    hits[x] += 1 if Bingos[x].find_index(b)
  end
end

hits.values.each do |v|
  puts 'yes' if v == 3
  exit
end

puts 'no'
