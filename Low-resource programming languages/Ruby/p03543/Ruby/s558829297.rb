s = gets.chomp.split('')
cnt = Hash.new(0)
s.each{|n| cnt[n]+= 1 }
print(cnt.values.max >= 3 ? 'Yes' : 'No')
