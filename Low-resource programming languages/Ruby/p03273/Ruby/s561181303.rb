h, w = gets.split(" ").map(&:to_i)

rows = []
h.times do
  rows << gets.chomp.chars
end

2.times do
  rows = rows.reject do |row|
    row.all?{|e| e == "."}
  end.transpose
end

puts rows.map{|row| row.join}.join("\n")