n = gets.chomp.to_i
input = Array.new
sum = 0

n.times do
  ngo = gets.to_i
  sum += ngo
  input << ngo
end

success = Array.new
input.sort!
#p input
loop do
  #puts "sum=#{sum}"
  if sum % 10 != 0
    puts sum
    exit
  end
  n.times do |i|
    next if success.include?(i)
    if (sum - input[i]) % 10 != 0
      #puts "i=#{i}"
      sum -= input[i]
      success.push(i)
      break
    end
  end
end

