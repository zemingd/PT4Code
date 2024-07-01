alph=[*"a".."y"]
a=gets.chomp.to_s
alph.each_with_index do |b, i|
  if b == 'y'
    puts "z"
  elsif a==b
    puts alph[i+1]
  end
end