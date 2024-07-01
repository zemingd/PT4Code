N,*ds=$<.read.split.map(&:to_i)
mod = 998244353

arr = Array.new(ds.max+1,0)
ds.each do |d|
    arr[d] += 1
end

n = 1
arr.each_cons(2) do |a,b|
    n = n*(a**b % mod)
end
p n % mod