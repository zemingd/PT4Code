s = gets.chomp.split('').map(&:to_i)
cnt = [0]*2
s.each{|x|
  cnt[x]+=1
}
p cnt.min*2
