n = gets.chomp.to_i
array = gets.chomp.split(' ').map(&:to_i)

class Int
  attr_accessor :gray, :brown, :green, :skyblue, :blue, :yellow, :orange, :red
end

free = 0
array.each do |rate|
  if 1 <= rate && rate <= 399 then
    @gray ||= 1
  elsif 400 <= rate && rate <= 799 then
    @brown ||= 1
  elsif 800 <= rate && rate <= 1199 then
    @green ||= 1
  elsif 1200 <= rate && rate <= 1599 then
    @skyblue ||= 1
  elsif 1600 <= rate && rate <= 1999 then
    @blue ||= 1
  elsif 2000 <= rate && rate <= 2399 then
    @yellow ||= 1
  elsif 2400 <= rate && rate <= 2799 then
    @orange ||= 1
  elsif 2800 <= rate && rate <= 3199 then
    @red ||= 1
  else
    free += 1
  end
end

min = @gray.to_i + @brown.to_i + @green.to_i + @skyblue.to_i +
      @blue.to_i + @yellow.to_i + @orange.to_i + @red.to_i

if min + free >= 8 then
  max = 8
else
  max = min + free
end

print("#{min} #{max}")