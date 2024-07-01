  x, y = gets.chomp.split(" ").map(&:to_i)
  a = [1,3,5,7,8,10,12]
  b = [4,6,9,11]
  c = [2]
  if a.include? (x)
    if a.include? (y)
      puts 'Yes'
    else
      puts 'No'
    end
  elsif b.include? (x)
    if b.include? (y)
      puts 'Yes'
    else
      puts 'No'
    end
  elsif c.include? (x)
    if c.include? (y)
      puts 'Yes'
    else
      puts 'No'
    end
  end
