def main(s)
  max_count = 0
  s.size.times do |idx|
    pre = s[(0..idx)].split('').uniq
    suf = s[((idx + 1)..-1)].split('').uniq
    count = (pre & suf).size
    max_count = count if count > max_count
  end
  max_count
end

_ = gets.to_i
s = gets.chomp
puts main(s)