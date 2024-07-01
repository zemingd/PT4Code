n = gets.chomp.to_i
a = gets.chomp.split(' ').map { |s| s.to_i}
b = gets.chomp.split(' ').map { |s| s.to_i}
c = gets.chomp.split(' ').map { |s| s.to_i}

before = 0
result = 0
a.each do |i|
  result += b[i-1]
  if 0 < before && i == before + 1
    result += c[before-1]
  end
  before = i
end
puts result