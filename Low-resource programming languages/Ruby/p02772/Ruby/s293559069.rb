n = gets.to_i
a = gets.split.map(&:to_i)
ar = []

a.each do |v|
  if v.even?
    ar << v
  end
end

if ar.count == (ar.select{ |v| (v % 3 == 0) || (v % 5 == 0) }).count
  puts "APPROVED"
else
  puts "DENIED"
end
