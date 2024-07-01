# coding: utf-8
def main
  n,m = gets.chomp.split(/ /).map {|i| i.to_i}
  hs = gets.chomp.split(/ /).map {|i| i.to_i}
  hs.unshift(0) #indexを合わせる

  h = Hash.new
  (1..m).each {|j|
    a,b = gets.chomp.split(/ /).map {|i| i.to_i}

    h[a] = [] unless h[a]
    h[b] = [] unless h[b]

    h[a] << b
    h[b] << a
  }

  good = []
  h.each do |i,rs|
    #puts i
    #p rs
    next if hs.empty?

    # hの高さ
    hh = hs[i]

    higher = true
    rs.each { |r|
      #puts hs[r]
      if hh <= hs[r]
        higher = false
        break
      end
    }

    #p higher
    if higher
      good << i 
    end
    #p good
  end

  x = good.length
  puts x
end

main
