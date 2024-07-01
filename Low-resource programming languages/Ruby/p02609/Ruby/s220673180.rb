N = gets.to_i
X = gets.chomp

count = X.count("1")
x_num = X.to_i(2)
@hash = { 0 => 0, 1 => 1 }

def f(n, ps=nil)
  # 登録済みは返却
  return @hash[n] if !@hash[n].nil?
  
  pc ||= n.to_s(2).count("1")
  m = n % pc
  # 未登録は登録
  if !@hash[m]
    @hash[m] = f(m)
  end
  @hash[n] = @hash[m] + 1
end

N.times do |i|
  n = x_num.dup
  if X[i] == "1"
    c = count - 1
    n -= 2 ** (N - i - 1)
  else
    c = count + 1
    n += 2 ** (N - i - 1)
  end
  puts f(n, c)
end
  
