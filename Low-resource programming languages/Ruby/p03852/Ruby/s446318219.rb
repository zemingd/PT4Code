def yes
  puts "vowel"
  exit
end

def no
  puts "consonant"
  exit
end

c = gets
boin = "aiueo"

boin.each_char do |b|
  if c[0] == b
    yes()
  end
end

no()