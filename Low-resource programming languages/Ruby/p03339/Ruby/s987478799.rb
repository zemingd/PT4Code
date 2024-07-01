N = gets.to_i
S = gets.chomp!.split('')

higasi_ruiseki = [0]
nisi_ruiseki  = [0]
S.each do |c|
  if c == 'E'
    higasi_ruiseki << higasi_ruiseki.last + 1
    nisi_ruiseki << nisi_ruiseki.last
  else
    nisi_ruiseki << nisi_ruiseki.last + 1
    higasi_ruiseki << higasi_ruiseki.last
  end
end

ans = Float::INFINITY

N.times do |i|
  gyaku = 0
  gyaku += nisi_ruiseki[i]
  gyaku += higasi_ruiseki[N] - higasi_ruiseki[i + 1]
  if ans > gyaku
    ans = gyaku
  end
end

puts  ans
