# coding: utf-8
#ABC166C_Peaks.rb
n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ar = Array.new(n){[]}

(1..m).each do |mm|
  a,b = gets.split.map(&:to_i)
  ar[a-1] << b
  ar[b-1] << a
end

#puts "ar=#{ar}"
#puts "h=#{h}"
#puts "------"
count = 0
(1..n).each do |mm1|
  #puts "No:#{mm1} H=#{h[mm1-1]} ar=#{ar[mm1-1]}"
  flag = 0
  ar[mm1-1].each do |mm2|
    #puts "#{h[mm1-1]} to #{h[mm2-1]}"
    
    if h[mm1-1] > h[mm2-1]
      flag += 1
    end
  end
  
  if flag == ar[mm1-1].size
    count += 1
  elsif ar[mm1-1].empty?
    count += 1
  end
  #puts "----"
end

puts count
