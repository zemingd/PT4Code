n = gets.chomp.split(//)

ans = ''
n.each do |c|
  if c == '9'
    ans += '1'
  elsif c == '1'
    ans += '9'
  else
    ans += c
  end
end

puts ans