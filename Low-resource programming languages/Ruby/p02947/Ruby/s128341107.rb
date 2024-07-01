# coding: utf-8

n = gets.to_i

a = {}

ret = 0
for i in 0..n-1 do
  s=gets.chomp

  ary = s.unpack("C*")
  ary = ary.sort
  ary = ary.pack("U*")

  if a.has_key?(ary) then
    a[ary]+=1
    ret += a[ary]
  else
    a[ary]=0
  end

end

print(ret)