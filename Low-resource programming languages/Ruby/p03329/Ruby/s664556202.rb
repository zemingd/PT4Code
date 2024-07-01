def log(n,x)
  [x,(Math.log(n.to_f) / Math.log(x.to_f)).to_i]
end

n = gets.to_i
count = 0
  until n < 6
    val = [log(n,9),log(n,6)].max_by{|arr| arr[0] ** arr[1]}
    count += 1
    n -= val[0] ** val[1]
  end

puts count + n