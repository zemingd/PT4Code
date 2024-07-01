N = gets.to_i
S = gets.chomp

max = 0
N.times do |i|
  tmp = 0

  26.times do |x|
    ch = ("a".ord + x).chr
    left = S[0, i+1]
    right = S[i+1, N]
    if left.include? ch and right.include? ch
      tmp += 1
    end
  end

  max = [max, tmp].max
end


puts max
