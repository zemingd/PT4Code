n,m=gets.split.map(&:to_i)
abs=[]

m.times do
  abs << gets.split.map(&:to_i)
end


abs = abs.sort_by {|a,b|
  [a,b]
}

i = 0
j = 1
ret = []
a = abs[i]
b = abs[j]
loop do
  #p '==========='
  #p [a,b]
  # bがaを含む
  if a[0] == b[0]
    j += 1
    b = abs[j]
  # aがbを含む
  elsif b[1] <= a[1]
    j += 1
    a = b
    b = abs[j]
  # かぶらない
  elsif a[1] <= b[0]
    ret << a
    i = j
    j = i+1
    a = abs[i]
    b = abs[j]
    break if b.nil?
  # 一部かぶる
  else
    a = [b[0],a[1]]
  end
  #p ret
end

ret << a

p ret.count