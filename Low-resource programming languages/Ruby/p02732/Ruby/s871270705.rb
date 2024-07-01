# require 'pry'
@fact = []
def set_fact(max_n, mod = 10 ** 9 + 7)
  @fact[0] = 1
  (1..(max_n - 1)).each do |i|
    @fact[i] = @fact[i - 1] * i % mod
  end
end

def choose(n, r, mod = 10 ** 9 + 7)
  r = n - r if r > n - r
  @fact[n] * modpow(@fact[n - r], mod - 2, mod) % mod \
    * modpow(@fact[r], mod - 2, mod) \
    % mod
end

def modpow(n, p, mod = 10 ** 9 + 7)
  res = 1
  while p > 0
    if p & 1 == 1
      res = (res * n) % mod
    end
    n = (n ** 2) % mod
    p >>= 1
  end
  res
end

# MOD = 10 ** 12
N = gets.to_i
# set_fact(N + 100, MOD)
lists = Hash.new(0)
arr = gets.split.map do |x|
  t = x.to_i
  lists[t] += 1
  t
end
# p arr
# p lists
lists2 = Hash.new(0)
lists3 = Hash.new(0)
lists.each do |k, v|
  lists2[k] = v >= 3 ? (v-2) * (v-1) / 2 : 0
  lists3[k] = v >= 2 ? (v-1) * v / 2 : 0
end
lists3_sum = lists3.to_a.inject(0){|sum, item| sum + item[1]}
# p lists3_sum
# p lists2
# p lists3

# binding.pry
N.times do |i|
  # p arr[i]
  pre = lists3_sum
  pre += lists2[arr[i]]
  pre -= lists3[arr[i]]

  puts pre
end
