card = []
numbers = []
3.times do |i|
  card.push(gets.split().map(&:to_i))
end

gets.to_i.times do |i|
  numbers.push(gets.to_i)
end

#横の判定 
3.times do |i|
  3.times do |j|
    unless numbers.include?(card[i][j])
      break
    end  
  end
  puts "Yes"
  exit
end

#縦の判定
3.times do |i|
  3.times do |j|
    unless numbers.include?(card[j][i])
      break
    end  
  end
  puts "Yes"
  exit
end

#斜めの判定1
1.times do 
  3.times do |i|
    unless numbers.include?(card[i][i])
      break
    end
  end

end

#斜めの判定2
1.times do 
  3.times do |i|
    unless numbers.include?(card[i][2-i])
      break
    end
  end
  puts "Yes"
  exit
end

puts "No"