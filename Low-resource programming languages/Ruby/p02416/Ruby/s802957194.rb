until (num = gets.chomp) == "0"
  puts num.split('').map(&:to_i).inject(&:+)
end
