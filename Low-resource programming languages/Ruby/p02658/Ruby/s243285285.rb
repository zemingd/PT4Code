n = gets&.to_i
a = gets.split&.map(&:to_i)

r = 1

a.each do |e|
  r = r * e
  r = '-1' and break if r > 10 ** 18
end

print r