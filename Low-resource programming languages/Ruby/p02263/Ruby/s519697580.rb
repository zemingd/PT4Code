s=[]
gets.split.each{|c|"+-*"[c]?(a,b=s.pop(2);s<<eval(a+c+b).to_s):s<<c}
puts s
