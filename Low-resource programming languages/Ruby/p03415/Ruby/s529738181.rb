    n, k = gets.strip.split.map(&:to_i)
     
    result = 0
    (1..n).each do |b|
      result += ( (n/b) * [(b-k), 0].max + [(n%b)-k+1, 0].max )
    end
     
    result -= n if k==0
     
    p result