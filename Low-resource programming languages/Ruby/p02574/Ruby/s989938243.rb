require 'prime'
_n = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

class Integer
  def elms
    Prime.prime_division(self).map(&:first)
  end
end

common_elms = arr[0].elms
all_elms = {}
common_elms.each do |i|
  all_elms[i] = true
end

pair = true
set = true
arr[1..-1].each do |i|
  crr_elms = i.elms
  common_elms = common_elms & crr_elms # どちらにもある要素が共通因数
  if pair
    crr_elms.each do |i|
      break pair = false if all_elms[i]
      all_elms[i] = true
    end
  else
    break set = false unless common_elms.empty?
  end
end

if pair
  puts "pairwise coprime"
elsif set
  puts "setwise coprime"
else
  puts "not coprime"
end