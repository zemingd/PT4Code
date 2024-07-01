A,B=gets.chomp.split.map(&:to_i)
[A,B].max.times do |i|
  if (A-i).abs==(B-i).abs then
    puts i
    exit
  end
end
puts 'IMPOSSIBLE'