n = gets.chomp.to_i

password = []
(1..n).each do |i|
  (1..n).each do |j|
    (1..n).each do |k|
      password << i*100 + j*10 + k
    end
  end
end

puts password.uniq.size