x = gets.to_i
answer = 1
 
(1..x).each do |a|
  (2..x).each do |b|
    arr = a ** b
    if arr <= x
      answer = [arr, answer].max
    elsif arr > x 
      break
    end
  end
end
 
puts answer