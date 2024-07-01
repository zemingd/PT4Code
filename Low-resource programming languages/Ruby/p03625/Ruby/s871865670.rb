n = gets.to_i
an = gets.split.map(&:to_i).sort{|a, b| b<=>a }
i = h = 0

while i < n - 1
  if an[i] != an[i+1]
    i += 1
  elsif an[i] == an[i+1] && h == 0
    h = an[i]
    i += 2
  else
    puts h * an[i]
    exit
  end
end

puts 0