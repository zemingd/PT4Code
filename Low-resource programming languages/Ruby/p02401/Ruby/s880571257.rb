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
roop_num = 0
arr.zip(brr) do |a, b|
  op = orr[roop_num]
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
  roop_num = roop_num + 1
end

