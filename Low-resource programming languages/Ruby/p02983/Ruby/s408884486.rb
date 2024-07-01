l, r = gets.split(" ").map(&:to_i)
ans = []
mod = 2019
 
for i in l..r-1 do
  for j in i+1..r do
    if i % mod == 0 or j % mod == 0
      puts "0"
      exit
    end
    ans << (i * j) % mod
  end
end
puts ans.min
