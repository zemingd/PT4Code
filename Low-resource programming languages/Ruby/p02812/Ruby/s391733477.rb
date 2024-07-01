N=gets.to_i
s=gets.chomp.chars
cnt=0
s.each_with_index do |el,i|
  if (el === "A") && (i <= s.size-2)
    if (s[i+1] == "B") && (s[i+2] == "C")
      cnt+=1
    end
  end
end
puts cnt