def count_char(array)
  answers = {
            "a" => 0,
            "b" => 0,
            "c" => 0,
            "d" => 0,
            "e" => 0,
            "f" => 0,
            "g" => 0,
            "h" => 0,
            "i" => 0,
            "j" => 0,
            "k" => 0,
            "l" => 0,
            "m" => 0,
            "n" => 0,
            "o" => 0,
            "p" => 0,
            "q" => 0,
            "r" => 0,
            "s" => 0,
            "t" => 0,
            "u" => 0,
            "v" => 0,
            "w" => 0,
            "x" => 0,
            "y" => 0,
            "z" => 0
            }
  length = array.length
    for i in 0..(length-1)
      if answers[array[i].downcase] == nil
        next
      else
        answers[array[i].downcase] += 1
     end
   end
     return answers
end

sum_hash = {}

while str_array = gets
  # str_array = input_values.chars.map(&:to_s)
answer = count_char(str_array)
sum_hash.merge!(answer){|key, v0, v1|v0 + v1}

end
 sum_hash.each {|key, value|
   print(key + " : ", value.to_s + "\n")
 }