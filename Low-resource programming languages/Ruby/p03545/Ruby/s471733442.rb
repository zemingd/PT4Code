str = gets.chomp.split("").map(&:to_i)
list = []
["+","-"].repeated_permutation(3) do |s|
  list << s
end
list.each do |a|
  moji = []
  str.each_with_index do |s, i|
    moji << s
    moji << a[i] if i < a.length
  end
  if eval(moji.join) == 7
    puts "#{moji.join}"+"=7"
    break
  end
end
