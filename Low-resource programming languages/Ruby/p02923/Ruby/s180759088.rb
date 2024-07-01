N,*hs=$<.read.split.map(&:to_i)

hs << 10**9+1

ret = 0
count = 0
t = 0
hs.each do |h|
  if t < h
    ret = count if ret < count
    count = 0
  else
    count += 1
  end
  t = h
end

p ret
