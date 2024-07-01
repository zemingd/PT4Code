def kasan(hash,n,aa,count_arr,mae)
  if(hash[aa.to_s] == nil) then
    return count_arr
  else
    hash[aa.to_s].each do |m|
      count_arr[m] += mae
      count_arr = kasan(hash,n,m,count_arr,count_arr[m])
    end
    return count_arr
  end
end

n,q = gets.chomp.split(" ").map{|i|i=i.to_i}
a=[]
b=[]
h = {}
n.times{|i|
  h[i.to_s] = []
}
(n-1).times{|i|
  arr = gets.chomp.split(" ").map{|i|i=i.to_i}
  a<<arr[0]
  b<<arr[1]
  h[(a[i]-1).to_s] << (b[i]-1)
}

p=[]
x=[]
q.times{|i|
  arr = gets.chomp.split(" ").map{|i|i=i.to_i}
  p<<arr[0]
  x<<arr[1]
}

count_arr = Array.new(n,0)

q.times{|i|
  count_arr[p[i]-1] += x[i]
}

count_arr = kasan(h,n,0,count_arr,count_arr[0])

puts count_arr.join(" ")