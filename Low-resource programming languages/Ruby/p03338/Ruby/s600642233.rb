def cut_and_count(s)
  l_hash = {}
  r_hash = {}

  s.chars.each do |c|
    if r_hash[c] == nil
      r_hash[c] = 1
    else
      r_hash[c] += 1
    end
  end

  ans = 0
  count = 0

  s.chars.each do |c|
    if l_hash[c] == nil
      l_hash[c] = 1
      count += 1
    end

    r_hash[c] -= 1
    count -= 1 if r_hash[c] == 0
    ans = count if count > ans
  end

  ans
end

n = gets.chomp.to_i
s = gets.chomp

puts cut_and_count(s)
