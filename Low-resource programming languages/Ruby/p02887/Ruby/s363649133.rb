N = gets.to_i
S = gets.chomp.split("")

slimes = Array.new()
S.each.with_index do |slime, i|
  if i == 0
    next
  end

  if S[i] == S[i - 1]
    next
  else
    slimes << S[i - 1]
  end
end
slimes << S.pop
answer = slimes.length
puts answer
