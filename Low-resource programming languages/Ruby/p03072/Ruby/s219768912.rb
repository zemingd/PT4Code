n = gets.to_i
i = gets.split(" ").map(&:to_i)
saidai = i[0]
kotae = 0
n.times{|t|
    if i[t] >= saidai then
        kotae +=1
        saidai = i[t]
    end
}
  print kotae