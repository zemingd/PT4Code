N = gets
ary = gets.chomp.split(' ').map(&:to_i).select{|num| num.even?}

if ary.length == 0
  puts "DENIED1"
  exit;
end

for n in ary do
  if n % 5 != 0 and n % 3 != 0
    puts "DENIED";
    exit
  end
end

puts "APPROVED";
