A=?a.ord
def to_ind(c)
  c.ord-A
end

s=gets.chomp
t=gets.chomp

table=Array.new(26){Array.new(26,false)}

s.size.times{|i|
  table[to_ind(s[i])][to_ind(t[i])]=true
}

b1=table.all?{|row|row.count(true)<=1}
b2=table.transpose.all?{|row|row.count(true)<=1}

puts b1&&b2 ? "Yes" : "No"