s=gets.chomp
ans = ""
s.chars do |c|
  if c == "0"
    ans += "0"
  elsif c == "1"
    ans += "1"
  elsif ans.size > 0
    ans.chop!
  end
end 
puts ans

