def main
  h, n = gets.chomp.split.map(&:to_i)
  a = gets.chomp.split.map(&:to_i).sort.reverse
  
  sum = 0
  isWin = false
  a.each do |v|
    sum += v
    if sum >= h
      isWin = true
      break
    end
  end
  
  return isWin
end

puts main ? 'Yes' : 'No'
