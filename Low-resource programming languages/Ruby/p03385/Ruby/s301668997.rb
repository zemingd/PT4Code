#文字列Sの入力
S = gets.chomp!

s1 = S[0]

if s1 == 'a' || s1 == 'b' || s1 == 'c'
#  p 's1OK'
  s2 = S[1]
  if s2 != s1 && (s2 == 'a' || s2 == 'b' || s2 == 'c')
#    p's2OK'
    s3 = S[2]
    if s3 != s1 && s3 != s2
      if(s3 == 'a' || s3 == 'b' || s3 == 'c')
        p 'Yes'
      else
#        p s3
        p 'No'
      end
    else
     p 'No'
    end
  else
     p 'No'
  end
else
  p 'No'
end