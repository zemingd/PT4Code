S = gets.chomp
ans = ""
alphabet = [*"a".."z"]

alphabet.each do |i|
  if S.include?(i)
    ans = i
    break
  end
end

puts ans.length
