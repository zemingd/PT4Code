N = gets.to_i
ary = []
for i in 0..N-1 do
  a = gets.to_i
  ary.push(a)
  if ary.count(a) == 2
    then
      ary.reject!{|i| i == a }
    else
    end
end
puts ary.size