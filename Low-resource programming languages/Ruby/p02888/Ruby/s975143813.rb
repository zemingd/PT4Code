_ = gets
sorted = gets.chomp.split(" ").map(&:to_i).sort_by{ |e| e }
sum = 0

sc = sorted.count
(0...sc-2).each do |i|
  (i+1...sc-1).each do |j|
    (j+1...sc).each do |k|
      if sorted[i]+sorted[j] > sorted[k]
        sum += 1
      	#print("#{i},#{j},#{k}\n")
      else
        break
      end
    end
  end
end

p sum