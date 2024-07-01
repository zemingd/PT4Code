require 'prime'
X = gets.to_i
all = Prime.each(2*10**5).to_a
if all.include?(X) then
  puts X
else
  x = Prime.each(X).to_a
  puts (all-x).first
end
