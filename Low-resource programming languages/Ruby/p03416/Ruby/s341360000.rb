def palindrome?(string)
  string.length.times do |i|
    if digits[i] != digits[-(i + 1)]
      return false
    end
  end

  true
end

a, b = gets.split.map(&:to_i)

puts a.upto(b).count { |n| palindrome?(n.to_s) }
