n = gets.split.map(&:to_i)
s = gets.split("")

state = 0
count = 0

s.each do |i|
  puts i
  if i == 'A' && state == 0
    state = 1
  else
    if state == 1
      if i == 'B'
        state = 2
      else
        state = 0
      end
    elsif state == 2
      count +=1 if i == 'C'
      state = 0
    end
  end
end

puts count