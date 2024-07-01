n = gets.to_i
  nums = gets.split.map(&:to_i)
  app = true
  nums.each do |num|
    if num%2 == 0
      if num%3 != 0 && num%5 != 0
        app = false
      end
    end
  end
  if app
    puts "APPROVED"
  else
    puts "DENIED"
  end