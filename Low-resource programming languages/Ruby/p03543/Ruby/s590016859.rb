N = gets.chomp
flag = false
0.upto(9).each do |i|
  if N =~ /#{i.to_s * 3}/
    flag = true
    break
  end
end
puts flag ? 'Yes' : 'No'