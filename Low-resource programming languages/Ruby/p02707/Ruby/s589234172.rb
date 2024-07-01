def max(a,b);       a > b ? a : b                              end
def min(a,b);       a < b ?  a : b                             end
def swap(a,b);      a, b = b, a                                end

n = gets.to_s.to_i
# n,m = gets.to_s.split.map{|e|e.to_i}
a = gets.to_s.split.map{|e|e.to_i-1}
# m = Array.new(n){ gets.to_s.split.map{|e|e.to_i} }
# s = gets.to_s.chomp

s = a.tally

(0...n).each do |t|
  puts s[t] || 0
end

#puts s