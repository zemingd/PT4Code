n = gets.to_i
s = gets.split("").map(&:to_s)
count = 0
s.each_with_index do |k, i|
  if k == "A" && s[i+1] == "B" && s[i+2] == "C"
    count += 1
  end
end
puts count
