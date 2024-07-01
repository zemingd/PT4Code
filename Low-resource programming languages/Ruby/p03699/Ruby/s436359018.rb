N=gets.strip.to_i
s = readlines.map {|x| x.strip.to_i }.sort

sum = s.reduce(:+)

if sum%10!=0
  p sum
  exit
end

without_10_times_s = s.reject {|x| x%10==0 }
smallest_no_10_times = without_10_times_s.first

if smallest_no_10_times.nil?
  p 0
  exit
end

result = sum - smallest_no_10_times
p result
