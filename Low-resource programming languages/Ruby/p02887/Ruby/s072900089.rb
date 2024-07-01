_ = gets
print gets.chomp.gsub(/(.)\1*/) {$1}.size