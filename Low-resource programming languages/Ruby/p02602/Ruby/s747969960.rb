nk = gets
a = gets.split(" ").map(&:to_i)

n = nk.split(" ")[0].to_i
k = nk.split(" ")[1].to_i

hyouten = []

cnt = 0
while cnt <= n - k do
  i = k-k+cnt

  hyouten[cnt] = a[i..i+k-1].inject(:*)

  if cnt >= 1
    if hyouten[cnt] > hyouten[cnt-1]
      puts "Yes"
    else
      puts "No"
    end
  end

  cnt += 1
end
