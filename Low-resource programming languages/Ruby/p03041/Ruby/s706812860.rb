N,K = gets.chomp.split(" ").map(&:to_i);
S = gets.chomp

result = []

S.chars.each_with_index do |str, index|
  if index == K - 1
    result << str.downcase
  else
    result << str
  end
end

puts "#{result.join}"