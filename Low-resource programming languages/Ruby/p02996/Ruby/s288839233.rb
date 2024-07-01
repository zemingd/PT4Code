N = gets.chomp.to_i
a, b,time, job, ans = [], [], 0, 0, "Yes"

N.times do |n|
  a[n] = gets.chomp.split.map(&:to_i).reverse
end

a.sort!

N.times do |n|
  time = a[n][0]
  job += a[n][1]
  if time < job
    ans = "No"
    break
  end
end

puts ans