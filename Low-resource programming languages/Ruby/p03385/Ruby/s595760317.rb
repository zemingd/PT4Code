S = gets.chomp!
 
s1 = S[0]
 
if s1 == 'a' || s1 == 'b' || s1 == 'c'
  s2 = S[1]
  if s2 != s1 && (s2 == 'a' || s2 == 'b' || s2 == 'c')
    s3 = S[2]
    if s3 != s1 && s3 != s2
      if(s3 == 'a' || s3 == 'b' || s3 == 'c')
        puts 'Yes'
      else
        puts 'No'
      end
    else
     puts 'No'
    end
  else
     puts 'No'
  end
else
  puts 'No'
end