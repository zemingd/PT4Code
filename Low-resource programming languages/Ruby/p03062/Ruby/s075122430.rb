N=gets.to_i
A=gets.split.map(&:to_i)

zero=false
cnt=0
abssum=0
absmin=Float::INFINITY
A.each do |a|
    zero=true if a == 0
    cnt += 1 if a < 0
    t = a.abs
    abssum += t
    absmin = t if t < absmin
end

if cnt % 2 == 0 || zero
    puts abssum
else
    puts abssum - absmin * 2
end
