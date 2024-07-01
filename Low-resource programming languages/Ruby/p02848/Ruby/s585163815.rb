array = ('A'..'Z').to_a
result = ""

N = gets.chomp.to_i
S = gets.chomp

S.split("").each do |str|
  array.each_with_index do |arr, index|
    if arr == str
      result += array[(index + N) % 26]
    end
  end
end

puts result