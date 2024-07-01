s = gets.split("").map(&:to_s)
count = 0
max = 0
s.each do |si|
  count += 1 if si == "R"
  count = 0 if si == "S"

  max = [max,count].max
end
puts max
