N = gets.to_i
S = gets.chomp.chars
w_count = 0
e_count = 0
S.each do |ch|
  if ch == 'W'
    w_count += 1
  else
    e_count += 1
  end
end
counts = Array.new(N)
S.each.with_index do |ch, i|
  wc = ch == 'W' ? 1 : 0
  ec = ch == 'E' ? 1 : 0
  if i == 0
    counts[i] = [wc, ec]
  else
    pwc, pec = counts[i - 1]
    counts[i] = [pwc + wc, pec + ec]
  end
end

ans = 1 << 60
N.times do |i|
  lwc, lec = counts[i]
  rwc = w_count - lwc
  rec = e_count - lec
  count = if S[i] == 'W'
    lwc - 1 + rec
  else
    lwc + rec
  end
  ans = count if count < ans
end
puts ans
