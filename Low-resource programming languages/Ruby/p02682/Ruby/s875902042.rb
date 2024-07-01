input = gets.split
p = input[0].to_i
m = input[2].to_i
s = 0

(input[3].to_i-input[1].to_i).times do
  if p > 0 then
    s+=1
    p-=1
  elsif m > 0 then
    s-=1
    m-=1
  end
end

p s
