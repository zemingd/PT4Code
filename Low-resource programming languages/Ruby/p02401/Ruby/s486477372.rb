arr = []
brr = []
while true
  a, op, b = gets.split.map(&:to_s)
  a = a.to_i
  b = b.to_i
  break if op == "?"
  arr.push(a)
  brr.push(b)
end
arr.zip(brr) do |a, b|
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

