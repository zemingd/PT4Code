#ABC106B_105.rb
n = gets.to_i
count = 0
ans = 0
(1..n).each do |nn|
  (1..nn).each do |mm|
    if nn % mm == 0
      count += 1
    end
  end
  ans += 1 if count ==8
end

puts ans
