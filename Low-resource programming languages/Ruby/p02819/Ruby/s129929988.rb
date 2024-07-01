candidate_n = gets.to_i

loop do
  sosu = true
  (2..Math.sqrt(candidate_n)).each do |n|
    if candidate_n % n == 0
      sosu = false
      break
    end
  end
  if sosu
    puts candidate_n
    break
  end
  candidate_n += 1
end