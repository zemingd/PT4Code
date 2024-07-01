@s=gets.chomp

def f(t, i)
  if i>=@s.size
    t+'=7' if eval(t)==7
  else
    res=[f(t+'+'+@s[i], i+1), f(t+'-'+@s[i], i+1)]
    res.reject{|r| r.nil?}[0]
  end
end

puts f(@s[0], 1)
