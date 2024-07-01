until (number=gets)=="0" do

puts number.split("").map(&:to_i).inject(:+)

end
