k, s = gets.strip.split.map(&:to_i)
cnt = 0

(0..k).each do |x|
  (0..k).each do |y|
    cnt +=1 if (s - x - y).betwwen?(0,k)
  end
end
puts cnt
