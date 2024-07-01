n = gets.chomp.to_i
def sosu?(number)
  2.upto(number - 1) do |v|
    if number % v === 0
      puts "sosu?(#{number}) is false\n"
      return false
    end
  end
  true
end

ans = n
loop do
  if sosu?(n)
    ans = n
    break
  end
  n += 1
end
print("#{ans}")
