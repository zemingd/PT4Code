$count = 0
def hoge(now, as, n)
  if n < now
    return
  elsif (n == now)
    $count = $count + 1
    return
  elsif as.include?(now)
    @f[now] = false
    return
  else
    hoge(now + 1, as, n) if @f[now + 1]
    hoge(now + 2, as, n) if @f[now + 2]
  end
end

n, m = gets.split(' ')
as = readlines
as = as.map {|s| s.chomp.to_i}
@f = Array.new(n.to_i + 1, true)

hoge(0, as, n.to_i)
p $count.modulo(1000000007)
