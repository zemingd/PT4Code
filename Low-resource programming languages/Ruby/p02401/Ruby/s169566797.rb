loop{
a,op,b = gets.split.map(&:to_s)
a = a.to_i
b = b.to_i
if op == "+"
    puts a + b
elsif op == "-"
    puts a - b
elsif op == "*"
    puts a * b
elsif op == "/"
    puts a / b
elsif op == "?"
    break
end
}
