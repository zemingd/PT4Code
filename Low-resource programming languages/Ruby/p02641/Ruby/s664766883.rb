x,n = gets.strip.split(" ").map do |i|
  i.to_i
end

p = gets.strip.split(" ").map do |i|
  i.to_i
end

i = 0
while(true)
  if !p.include?(x-i)
    print(x-i)
    break
  elsif !p.include?(x+i)
    print(x+i)
    break
  end
  i+=1
end
