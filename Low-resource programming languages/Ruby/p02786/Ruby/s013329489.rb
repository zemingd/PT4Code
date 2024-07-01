h = gets.chomp.to_i


count = 0

if h == 1
  puts 1
  exit
end


while 1
  h = (h/2)
  count += 1

  break if h == 1

end

ans = [1]

1.upto(count) do |c|
  ans << ans[c-1] + 2**c
end

p ans.last