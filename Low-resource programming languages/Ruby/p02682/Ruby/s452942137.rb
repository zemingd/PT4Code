A, B, C, K = gets.chomp.split(" ").map(&:to_i)

k = K

k -= A

if k < 0 then
  puts K
  return
end

if k == 0 then
  puts A
  return
end

k -= B

if k < 0 then
  puts K
  return
end

if k == 0 then
  puts A
  return
end

puts A - k