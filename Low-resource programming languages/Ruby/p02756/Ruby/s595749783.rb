s = gets.chomp.split
qs = gets.chomp.to_i
query = []
qs.times do |i|
  query << gets.chomp.split
end

query.each do |array|
  if array[0] == '1'
    s = s.reverse
  else
    if array[1] == '1'
      s = s.unshift(array[2])
    elsif array[1] == '2'
      s = s.push(array[2])
    end
  end
end

puts s.join