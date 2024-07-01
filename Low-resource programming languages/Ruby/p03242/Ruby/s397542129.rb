# frozen_string_literal: true

str = gets.chomp.split("")

answer = str.map {|c| c == "1" ? "9" : "1" }.join("").to_i
puts answer
