s = gets.downcase
[*'a'..'z'].map { |e| [e, s.count(e)] }.each do |i, j|
  puts "#{i} : #{j}"
end