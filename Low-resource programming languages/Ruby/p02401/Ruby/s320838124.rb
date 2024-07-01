arr = []
brr = []
orr = []
while true
  a, op, b = gets.split.map(&:to_s)
  a = a.to_i
  b = b.to_i
  break if op == "?"
  arr.push(a)
  brr.push(b)
  orr.push(op)
end
arr.zip(brr) do |a, b|
  orr.each do |op|
    case op
    when "+" then
      puts a + b
    when "-" then 
      puts a - b
    when "/" then
      puts a / b
    when "*" then
      puts a * b
    end
  end
end

