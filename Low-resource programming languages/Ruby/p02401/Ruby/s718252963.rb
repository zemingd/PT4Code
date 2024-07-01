loop do
    a,op,b=gets.split
a=a.to_i
b=b.to_i

break if op=="?"
puts a+b if op=="+"
puts a-b if op=="-"
puts a*b if op=="*"
puts a/b if op=="/"
end

