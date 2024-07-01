def main
  puts gets.chomp.gsub(/[19]/,
                       "1" => "9", "9" => "1")
end

if __FILE__ == $0
  main
end
