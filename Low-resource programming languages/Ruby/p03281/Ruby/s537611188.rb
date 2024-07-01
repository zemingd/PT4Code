# coding: utf-8
#ABC106B_105.rb
n = gets.to_i
count = 0
ans = 0

(1..n).each do |nn|
  count = 0
  (1..nn).each do |mm|
    if nn % mm == 0
      count += 1
    end
  end
  ans += 1 if count==8 && nn%2==1
end

puts ans

