gets
ans = gets.strip.split.map(&:to_i).inject(1, &:*)
if ans > 10 ** 18
  puts("-1")
else
  puts(ans)
end
