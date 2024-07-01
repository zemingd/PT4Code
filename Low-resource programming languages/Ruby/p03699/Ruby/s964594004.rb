Ss = readlines.drop(1).map(&:to_i)

ss = Ss.sort
sum = ss.inject(:+)
if sum % 10 != 0
  puts sum
elsif ss.all?{|s| s % 10 == 0}
  puts 0
else
  begin
    ss.each do|s|
      if sum - s % 10 != 0
        puts sum - s
        exit
      end
    end
    sum -= ss.shift
  end
end