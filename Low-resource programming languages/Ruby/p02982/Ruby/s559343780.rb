#改行を二次配列でとる
arr = Array.new
while line = $stdin.gets
arr << line.chomp.split.map(&:to_i)
end

n = arr[0][0]
d = arr[0][1]
arr.delete_at(0)
ans = 0
n.times{|t|
n.times{|m|
  sum = 0
  d.times{|l|
    sum += ((arr[t][l] - arr[m][l]).abs)**2
  }
  if (sum**(1/2.0) - (sum**(1/2.0)).to_i) == 0 then
    ans +=1
  end
}
}

print (ans - n)/2