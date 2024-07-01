require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
s = gets.chomp

if s.size.odd?
  puts 'No'
else
  s.size.times do |i|
    if i.even?
      if s[i] != 'h'
        puts 'No'
        exit
      end
    else
      if s[i] != 'i'
        puts 'No'
        exit
      end
    end
  end
end

puts 'Yes'


