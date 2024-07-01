n = gets.chomp

(0..n.length-1).each do |i|
  if n[i] == '1'
    n[i] = '9'
  elsif n[i] == '9'
    n[i] = '1'
  end
end

puts n