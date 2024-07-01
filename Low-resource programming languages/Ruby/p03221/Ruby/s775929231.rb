n, m = gets.split.map(&:to_i)
city = Array.new(m) { Array.new(2) }
(0..m-1).each do |i|
  city[i] = gets.split.map(&:to_i)
end

cityOfP =  Array.new(n) {Array.new}

(0..n-1).each do |i|
  (0..m-1).each do |j|
    if city[j][0] == (i+1)
      cityOfP[i].push(city[j][1])
    end
  end
end

cityNumber = Array.new(m)

(0..n-1).each do |i|
  cityOfP[i].sort!.each_with_index do |value, index|
    p index
    (0..m-1).each do |j|
      if city[j][0] == (i+1) && city[j][1] == value
        cityNumber[j] = (i+1).to_s.rjust(6, "0") + (index + 1).to_s.rjust(6, "0")
      end
    end
  end
end



cityNumber.each do |string|
  puts string
end