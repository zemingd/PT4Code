a,b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
arr = 10.times.map(&:to_s)

if s[a] == "-"  then
  (s[0..(a-1)] + s[(a+1)..1]).each_char do |c|
    unless arr.include?(c) then
      puts "No"
      exit
    end
  end
  puts "Yes"
else
  puts "No"
end

