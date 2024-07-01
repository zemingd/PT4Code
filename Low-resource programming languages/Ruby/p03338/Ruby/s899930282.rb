N = gets.to_i
S = gets.chomp

p (0..N-2).inject(0) {|res, i|
    type = S.chars.uniq.inject(0) {|sum, j|
        judge = [S[0..i], S[i+1..-1]].map{|k| k.include?(j)}
        sum = judge.all? ? sum + 1 : sum
    }
    
    res = [res, type].max
}