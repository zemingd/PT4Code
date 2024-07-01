# A, B = gets.split(" ").map(&:to_i)
S = gets.chomp.split(//)
# N = gets.to_i

ok = true
prev = nil
S.each do |c|
  if prev == c
    ok = false
    break
  end
  prev = c
end
puts ok ? 'Good' : 'Bad'
