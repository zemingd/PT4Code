
n = gets.chomp.to_i
s = gets.chomp

m = s =~ /#/

result = 0

if m == nil
  puts 0
else
  
  p m

  sliced = s.slice(m, n)
  
  p sliced


  sliced.chars.each do |i|
    
    if i == "."
      result += 1
    end


  end


  puts result

end