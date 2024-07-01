nums = gets.strip.split('')
[:+, :-].repeated_permutation(3).each do |s|
  r = nums.zip(s).flatten.compact.join('')
  if eval(r)==7
    puts (r+'=7')
    exit
  end
end


