S = gets.to_i
N = gets.chomp.split(' ').map(&:to_i)

count = 0

for num1 in 0..N.size - 1 do
  if N[num1].even?
    if N[num1]%3 == 0 || N[num1]%5 == 0
      count += 1
    else
      puts 'DENIED'
      break
    end
  end

  if S - 1  == num1 && count > 0
    puts 'APPROVED'
  end
end