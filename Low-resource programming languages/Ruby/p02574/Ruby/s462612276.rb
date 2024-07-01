require 'prime'

_n = gets.to_i
a = gets.split.map(&:to_i)
flg = nil

Prime.each(1000) do |p|
  count = 0

  a.each do |e|
    count += 1 if e % p == 0
    if count == 2
      flg = 1
      break
    end
  end

  break if flg
end

if flg.nil?
  puts 'pairwise coprime'
  exit
end

puts a.inject(:gcd) == 1 ? 'setwise coprime' : 'not coprime'