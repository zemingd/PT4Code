a,b = gets.split(" ").map!{|i| i.to_i}
s = gets.split("").map!{|j| j.to_s}
frag = true
s.length.times do |k|
  if k == a
    if s[k] != "-"
      frag = false
    end
  else
    if s[k].to_i =~ /^[0-9]+$/
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

  
