z = "z".ord.succ

s = gets.chomp
so = s.split(//).map{|x| z - x.ord}
k = gets.to_i

last = 0
so.size.times{|i|
  break if k.zero?
  k -= so[i]
  if k < 0
    k += so[i]
  else
    s[i] = "a"
  end
}

k = k % 26
s[-1] = (s[-1].ord + k).chr

puts s



