N = gets.chomp.to_i
T, A = gets.chomp.split(" ").map{|s| s.to_i }
H_ARR = gets.chomp.split(" ").map{|s| s.to_i }

index = nil
min_diff = nil

H_ARR.each_with_index do |h, i|
  temp = T - 0.006*h
  diff = (A-temp).abs
  if index.nil? || diff < min_diff
    index = i
    min_diff = diff
  end
end

puts index + 1