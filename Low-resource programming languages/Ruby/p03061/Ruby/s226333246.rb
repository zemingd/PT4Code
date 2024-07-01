# gcd, lcm メソッドを拡張するコピペ
class Array
  def lcm
    inject(:lcm)
  end

  def gcd
    inject(:gcd)
  end
end

attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

N = attrs.shift[0]
A = attrs.shift.sort

result = []
if A.length > 2 then
  for i in 0..(N - 1) do
    result << A.reject{|n| n == A[i]}.gcd
  end
else
  result << A.gcd
end

puts result.max