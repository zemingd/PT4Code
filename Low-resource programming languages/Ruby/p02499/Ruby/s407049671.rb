ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
while input = gets
  array = Hash.new
  for i in 0..ALPHABET.length
    array[ALPHABET[i]] = 0
  end
  
  input.chars {|letter|
    if ALPHABET.include?(letter)
      if array[letter] == nil then array[letter] = 1
	  else array[letter] += 1
	  end
	end
  }
  
  ALPHABET.each_with_index do |letter|
    puts letter + ":" + array[letter].to_s
  end
end