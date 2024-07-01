N,M = gets.chomp.split.map(&:to_i)

s = []
1.upto(M) do |m|
  s[m] = gets.chomp.split.map(&:to_i)
  s[m].shift
end

p = gets.chomp.split.map(&:to_i)

ans = 0
[0,1].repeated_permutation(N) do |arr|
  flag = false
  1.upto(M) do |m|
    sum = 0
    s[m].each do |ss|
      sum += arr[ss-1]
    end
    if sum % 2 != p[m-1]
      flag = true
      break
    end
  end
  next if flag
  ans += 1
end
p ans
