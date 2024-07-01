n = gets.chomp.to_i

array = []
n.times do
  a = gets.chomp.to_i
  a.times do
    array.push gets.chomp.split.map(&:to_i)
  end
end

ans = 0

(2**n).times do |i|
  bits = i.to_s(2).split(//)
  (n - bits.length).times{bits.unshift('0')}

  flg = true
  array.zip(bits).each do |e, bit|
    next if bit == '0' # 嘘言う人はするー
    if (e.last == 1 && bits[e.first-1] == '0') ||
       (e.last == 0 && bits[e.first-1] == '1') # 矛盾
      flg = false
      break
    end
  end

  if flg
    # p [bits, ans]
    ans = [ans, bits.count{|bit| bit=='1'}].max
  end
end

puts ans