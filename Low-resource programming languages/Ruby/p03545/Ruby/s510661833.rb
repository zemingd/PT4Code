nums = gets.chomp.chars.map(&:to_i)

(0..7).each do |n|
  pm = n.to_s(2).rjust(3, "0").gsub("0","-").gsub("1","+")
  evaluation = "#{nums[0]}#{pm[0]}#{nums[1]}#{pm[1]}#{nums[2]}#{pm[2]}#{nums[3]}"
  if eval(evaluation) == 7
    puts "#{evaluation}=7"
    exit
  end
end