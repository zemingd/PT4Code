age, bill = gets.split.map(&:to_i)

p case age
  when 0..5
    0
  when 6..12
    bill / 2
  else
    bill
  end
