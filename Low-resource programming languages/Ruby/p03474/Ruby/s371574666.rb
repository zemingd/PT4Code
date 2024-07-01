a,b = gets.split(" ").map!{|i| i.to_i}
s = gets.split("").map!{|j| j.to_s}
frag = false
s.length.times do |k|
  if k == a
    if s[k] == "-"
      frag =true
    end
  else
    if s[k] =~ /^[0-9]+$/
      frag = true
    else
      frag = false
    end
  end
end
if frag == true
  puts 'Yes'
else 
  puts 'No'
end

  
