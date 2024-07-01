L,R=gets.chomp.split.map(&:to_i)

ans=2020
if L-R>=2019
  puts 0
else
  L.upto(R) do |i|
    (i+1).upto (R) do |j|
      ans = (i*j)%2019 if ans > (i*j)%2019
    end
  end
end

puts ans