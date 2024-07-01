n = gets.to_i
answer = 0

(1..n).each do |number|
  if number ** 2 > n
    answer = number -1
    break
  end
end

answer = 1 if answer = 0
puts answer **2