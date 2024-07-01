n = gets.chomp.to_i
hats = gets.chomp.split(" ").map(&:to_i)

uniq_hats = hats.uniq

if uniq_hats.size == 1 && uniq_hats[0] == 0
  puts "Yes"
  exit
end

uniq_hats_2 = Array.new(3) {Array.new(50, 0)}

if uniq_hats.size == 3 && hats.count(uniq_hats[0]) == hats.count(uniq_hats[1]) && hats.count(uniq_hats[1]) == hats.count(uniq_hats[2])
  uniq_hats.each_with_index do |uniq_hat, index1|
    50.times do |index2|
      uniq_hats_2[index1][index2] = uniq_hat[index2]
    end
  end
else
  puts "No"
  exit
end

uniq_hats_3 = Array.new(50, 0)
uniq_hats_2.each_with_index do |uniq_hat_2, index1|
  50.times do |index2|
    uniq_hats_3[index2] += uniq_hat_2[index2]
  end
end

if uniq_hats_3.include?(1) == false && uniq_hats_3.include?(3) == false
  puts "Yes"
else
  puts "No"
end