n,q = gets.chomp.split(" ").map{|i|i=i.to_i}
#pp n
#pp q
a=[]
b=[]
$hash = {}
n.times{|i|
  $hash[i.to_s] = []
}

(n-1).times{|i|
  arr = gets.chomp.split(" ").map{|ii|ii=ii.to_i}
  a<<arr[0]
  b<<arr[1]
  $hash[(a[i]-1).to_s] << (b[i]-1)
}
#pp $hash
p=[]
x=[]
q.times{|i|
  arr = gets.chomp.split(" ").map{|ii|ii=ii.to_i}
  p<<arr[0]
  x<<arr[1]
}


$count_arr = Array.new(n,0) # 最終的な値が入る

q.times{|i|
  $count_arr[p[i]-1] += x[i]
}

#pp count_arr

#pp $count_arr

# aa : 現在の頂点
# count_arr : count_arr
# mae : 一つ前の値
def kasan(n,aa,mae)
  if($hash[aa.to_s] == nil) then
    return
  else
    #puts "now aa = #{aa}"
    #pp $hash[aa.to_s] 
    $hash[aa.to_s].each do |m|
      #puts "now m = #{m}, mae = #{mae}"
      $count_arr[m] += mae
      kasan(n,m,$count_arr[m])
    end
    return
  end
end
kasan(n,0,$count_arr[0])

puts $count_arr.join(" ")