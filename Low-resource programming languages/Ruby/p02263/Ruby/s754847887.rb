arr=Array.new
num=gets.split
num.each do |s|
  if s=='+'
    b=arr.pop
    a=arr.pop
    arr.push(a+b)
  elsif s=='-'
    b=arr.pop
    a=arr.pop
    arr.push(a-b)
  elsif s=='*'
    b=arr.pop
    a=arr.pop
    arr.push(a*b)
  else
    arr.push(s.to_i)
  end
end
puts arr.pop