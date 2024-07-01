n = gets.chop.to_i
al = gets.split.map(&:to_i)
bl = gets.split.map(&:to_i)
cl = gets.split.map(&:to_i)

satisfaction = 0
latest = nil

al.each do |a|
  satisfaction += bl[a - 1]
  satisfaction += cl[latest - 1] if latest && latest + 1 == a
  latest = a
end

puts satisfaction
