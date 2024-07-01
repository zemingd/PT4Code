N = gets.to_i
ary = []
for i in 0..N-1 do
  a = gets.to_i
  if ary.select! {|item| item != a } == nil then
    ary.push(a)
  else
    ary.select! {|item| item != a }
  end
end
puts ary.size