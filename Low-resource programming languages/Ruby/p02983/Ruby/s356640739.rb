l, r = gets.chomp.split().map(&:to_i)

rem = []
[*l..r].each_with_index do |i, ind|
  break if ind == 2019
  t = i % 2019

  if t == 0
    print(0)
    exit 0
  end
  
  rem << t
end

puts rem.sort[...2].reduce(&:*)
