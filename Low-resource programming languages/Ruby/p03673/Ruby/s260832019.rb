n = gets.chomp.to_i
ama = n % 2
aa = gets.chomp.split.map(&:to_i)
stt = n / 2
hd = Array.new(stt)
tl = Array.new(stt)

if ama == 1
    ct = aa.shift
else
    ct = nil
end

if aa.size == 0
    puts ct
    exit
end


j = 0
k = 0
n.times do |i|
    if i % 2 == 0
        tl[j] = aa[i]
        j += 1
    else
        pos = stt - k - 1
      hd[pos] = aa[i]
      k += 1
    end
end


# print hd.join(' ')
print hd.join(' ')
if ct
   print ' '
   print ct
   print ' '
else
   print ' '
end

puts tl.join(' ')
