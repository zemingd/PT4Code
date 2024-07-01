N, X = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

arr = []
x.each do |xx|
  arr.push((X - xx).abs)
end
p arr.inject(:gcd)
