n,q = gets.chomp.split(" ").map{|i|i=i.to_i}
a=[]
b=[]
$hash = {}
n.times{|i|
  $hash[i.to_s] = []
}

(n-1).times do
  arr = gets.chomp.split(" ").map{|ii|ii=ii.to_i}
  a<<arr[0]
  b<<arr[1]
end
(n-1).times do|i|
  $hash[(a[i]-1).to_s] << (b[i]-1)
end
p=[]
x=[]
q.times do|i|
  arr = gets.chomp.split(" ").map{|ii|ii=ii.to_i}
  p<<arr[0]
  x<<arr[1]
end

$count_arr = Array.new(n,0) # 最終的な値が入る

q.times{|i|
  $count_arr[p[i]-1] += x[i]
}

#pp $count_arr
#pp $hash

def kasan(n,aa)
  if($hash[aa.to_s] != nil) then
    $hash[aa.to_s].each do |m|
      $count_arr[m] += $count_arr[aa]
      kasan(n,m)
    end
  end
  return
end
kasan(n,0)

puts $count_arr.join(" ")