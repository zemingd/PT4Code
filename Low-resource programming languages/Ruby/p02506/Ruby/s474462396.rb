w,t=gets.downcase.chop,"";until /END_OF_TEXT/===(s=gets)
t+=s;end;p t.downcase.split.count w