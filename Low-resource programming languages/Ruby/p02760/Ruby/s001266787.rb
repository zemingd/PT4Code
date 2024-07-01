bingo = (0..2).map do 
  gets.split(' ').map { |v| { value: v.to_i, open: false } }
end
  
N = gets.to_i

(1..N).each do
  v = gets.to_i
  bingo = bingo.map do |row|
    row.map do |cell|
      if cell[:value] == v
        cell[:open] = true
      end
      cell
    end
  end
  (0..2).each do |i|
    if bingo[i].all? { |cell| cell[:open] }
      puts 'Yes'
      exit
    end
    if bingo.all? { |col| col[i][:open] }
      puts 'Yes'
      exit
    end
    
    if bingo[0][0][:open] && bingo[1][1][:open] && bingo[2][2][:open]
      puts 'Yes'
      exit
    end
    if bingo[2][0][:open] && bingo[1][1][:open] && bingo[0][2][:open]
      puts 'Yes'
      exit
    end
  end
end

puts 'No'