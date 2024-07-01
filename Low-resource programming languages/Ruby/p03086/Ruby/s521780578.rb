S = gets.chomp

acgt = ['A','C','G','T']
count = 0
result = 0
S.each_char do |ch|
  if acgt.include?(ch)
    count += 1
  else
    count = 0
  end
  result = count if result < count
end

print result