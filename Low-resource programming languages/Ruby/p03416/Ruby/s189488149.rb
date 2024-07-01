a,b = gets.split.map(&:to_i)

def f i
  s = i.to_s
  s[0]==s[4]&&s[1]==s[3]
end

ans = 0
a.upto(b){|i|
  ans += 1 if f i
}

p ans