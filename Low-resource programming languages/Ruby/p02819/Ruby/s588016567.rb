require 'prime'
n=gets.to_i
(n..Float::INFINITY).each do |i|
  if Prime.prime? i
    p i
    break
  end
end
