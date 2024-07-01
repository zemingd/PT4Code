n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
if a.all?(0)
  puts "Yes"
else
  cnt = Hash.new(0)
  a.each do |x|
    cnt[x] += 1
  end
  if cnt.length == 2 && a.length % 3 == 0
    f1 = false
    f2 = false
    cnt.each do |k,v|
      if k == 0
        f1 = true
      elsif v == 2 * a.length / 3
        f2 = true
      end
    end
    if f1 && f2
      puts "Yes"
    else
      puts "No"
    end
    exit
  elsif cnt.length == 3 && a.length % 3 == 0
    f = true
    x = 0
    cnt.each do |k,v|
      if v != a.length / 3
        f = false
      end
      x = x ^ k
    end
    if x == 0 && f
      puts "Yes"
    else
      puts "No"
    end
    exit
  end
  puts "No"
end