l, r = gets.strip.split(' ').map(&:to_i)

if (r-l+1 >= 2019)
  p 0
  exit
end

arr = (l..r).to_a.map{ |x| x%2019 }.sort
p (arr[0]*arr[1])%2019

