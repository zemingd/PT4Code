n,k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

h.sort
cnt = 0

if n <= k
    puts n
elsif n > k
 for i in 0.. n - k - 1 do
     cnt += h[i]
 end
 puts cnt 
end
