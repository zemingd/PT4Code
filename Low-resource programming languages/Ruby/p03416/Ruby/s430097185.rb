def digits_of(num)
  num.to_s.chars.reverse!.map(&:to_i)
end

def palindrome?(num)
  ds = digits_of(num)
  ds.size.times do |i|
    if ds[i] != ds[-(i + 1)]
      return false
    end
  end

  true
end

a, b = gets.split.map(&:to_i)

puts a.upto(b).count { |n| palindrome?(n) }
