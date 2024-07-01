#a = gets.split(" ").map{|x| x.to_i}
=begin
s = gets.chomp
if s == "Sunny"
  puts "Cloudy"
elsif s == "Rainy"
  puts "Sunny"
else
  puts "Rainy"
end
=end

=begin
s = gets.chomp.split("")

guusuu = 0
flag = 0
(s.size).times do |i|
  if guusuu == 0
    if s[i] == "L"
      flag = 1
      break;
    end
    guusuu = 1

  else
    if s[i] == "R"
      flag = 1
      break;
    end
    guusuu = 0
  end
end

if flag == 0
  puts "Yes"
else
  puts "No"
end
=end

nkq = gets.split(" ").map{|x| x.to_i}
n = nkq[0]
k = nkq[1]
q = nkq[2]

point = Array.new(n, k)
hito = Array.new(n, 0)

sum = 0
q.times do |i|
  hito[gets.to_i - 1] += 1
end

n.times do |i|
  sum += hito[i]
end

n.times do |i|
  if k - sum + hito[i] <= 0
    puts "No"
  else
    puts "Yes"
  end
end
