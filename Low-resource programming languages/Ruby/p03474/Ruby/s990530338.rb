a, b = gets.chomp.to_i
s = gets.chomp
status = 'Yes'

s.length.times do |i|
  #a回
  if i < a && s[i] =~ /^[0-9]+$/
    #puts "#{s[i]} ok"

  #a+1がハイフン
  elsif i == a && s[a] == '-'
    #puts "#{s[i]} ok"

  #b回
  elsif i > a && s[i] =~ /^[0-9]+$/
    #puts "#{s[i]} ok"
  else
    status = 'No'
    break
  end
end

puts status