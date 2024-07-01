# ダメだったのでメモ再帰
# memo 1000000で通ったかどうかだけみればいいっぽい

n = gets.chomp.to_i
@memo = Array.new(n+1, -1)
@numset = [1]
roku = 6
while roku<=n
  @numset<<roku
  roku*=6
end
kyu = 9
while kyu<=n
  @numset<<kyu
  kyu*=9
end

# 1から始めるとそりゃあ間に合わんのは当然なので
@numset.sort!.reverse!

def rec(cur)
  return 0  if cur.zero?
  return @memo[cur] if @memo[cur]>0
  ret = 10**10
  @numset.each do |ni|
    if cur>=ni
      ret = [ret, rec(cur-ni)+1].min
    end
  end
  @memo[cur] = ret
  return ret
end

puts rec(n)
