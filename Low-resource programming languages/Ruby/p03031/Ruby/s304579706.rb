N, M = gets.chomp.split(" ").map(&:to_i)
SW = Hash.new
M.times{|i|
  k = gets.chomp.split(" ").map(&:to_i)
  SW[i] = k[1..-1]
}
P = gets.chomp.split(" ").map(&:to_i)

A = []
def make_all_pattern(i, &b)
  if i == 0 then
    b.call(A)
    return
  end
  A << 0
  make_all_pattern(i - 1, &b)
  A.pop
  A << 1
  make_all_pattern(i - 1, &b)
  A.pop
end


ans = 0
make_all_pattern(N){|a|
  flg_all_light = true
  SW.each{|k, v|
    oncnt = a.select.with_index{|n, idx| v.include?(idx+1)}.inject(:+)
    if (oncnt + P[k]).odd? then
      flg_all_light = false
      break
    end
  }
  ans += 1 if flg_all_light
}

puts ans
