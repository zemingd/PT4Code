card = []
numbers = []
flag = true
3.times do |i|
  card.push(gets.split().map(&:to_i))
end

gets.to_i.times do |i|
  numbers.push(gets.to_i)
end

#横の判定 
3.times do |i|
  flag = true
  3.times do |j|
    unless numbers.include?(card[i][j])
      flag = false
      break
    end  
  end
  if flag
    puts "Yes"
    exit
  end
end

#縦の判定
3.times do |i|
  flag = true
  3.times do |j|
    unless numbers.include?(card[j][i])
      flag = false
      break
    end  
  end
  if flag
    puts "Yes"
    exit
  end
end

#斜めの判定1
1.times do 
  flag = true
  3.times do |i|
    unless numbers.include?(card[i][i])
      flag = false
      break
    end
  end
  if flag
    puts "Yes"
    exit
  end
end

#斜めの判定2
1.times do 
  flag = true
  3.times do |i|
    unless numbers.include?(card[i][2-i])
      flag = false
      break
    end
  end
  if flag
    puts "Yes"
    exit
  end
end

puts "No"