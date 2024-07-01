ishes = []
for i in 0..4 do
  dishes[i] = gets.chomp.to_i
end

sum = 0
min_minutes = 0
dishes.each_with_index do |dish, key|
  minutes = (dish.to_s[-1]).to_i
  if ( minutes != 0 && min_minutes < 10 - minutes)
    min_minutes = 10 - minutes
  end
  time = (dish.to_f/10.to_f).ceil * 10
  sum += time.to_i
end

print("#{sum - min_minutes}\n")