N = gets.to_i

s = []

N.times do |i|
  s <<  gets.chomp
  if i > 0 && s[i-1][-1] != s[i][0]
    puts "No"
    exit
  end

  if i > 1
    0.upto(i-1) do |j|
      if s[i].eql?(s[j])
        puts "No"
        exit
      end
    end
  end
end

puts "Yes"
