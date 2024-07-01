N,*ds=$<.read.split.map(&:to_i)
mod = 998244353

arr = Array.new(ds.max+1,0)
ds.each do |d|
    arr[d] += 1
end

if arr[0] != 1
    puts 0
    exit 0
end

n = 1
arr.each_cons(2) do |a,b|
    n *= a**b
end
p n % mod