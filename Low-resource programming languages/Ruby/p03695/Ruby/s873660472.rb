require 'scanf'
n = scanf("%d").first
a = scanf("%d"*n)
cnt = Array.new(9, 0)
RG = [1..399, 400..799, 800..1199, 1200..1599, 1600..1999, 2000..2399, 2400..2799, 2800..3199]
outcnt = 0
a.each do |v|
    flag = false
    RG.each_with_index do |rg, idx|
      if rg.include?(v)
        flag = true
        cnt[idx] += 1
        break
      end
    end
    if !flag
      outcnt += 1
    end
end
cntc = 0
cnt.each do |e|
  cntc += 1 if e > 0
end
if cntc == 0
  if outcnt != 0
    puts "#{1} #{outcnt}"
    exit
  else
    puts "0 0"
    exit
  end
else 
  puts "#{cntc} #{cntc+outcnt}"
end
