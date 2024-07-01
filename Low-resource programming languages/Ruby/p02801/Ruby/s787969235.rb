alph=[*"a".."y"]
a=gets.chomp.to_s
puts a != 'y' ? alph[alph.index(a)+1] : "z"