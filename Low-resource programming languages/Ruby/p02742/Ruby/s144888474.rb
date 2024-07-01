H,W=$<.read.split.map(&:to_i)

if H ==1 || W==1
    puts 1
    exit 0
end

ret = W*(H/2) 
ret += (W+1)/2 if H.odd?

puts ret
