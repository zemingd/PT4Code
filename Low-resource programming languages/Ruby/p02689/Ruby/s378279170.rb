# coding: utf-8
def main
  n,m = gets.chomp.split(/ /).map {|i| i.to_i}
  hs = gets.chomp.split(/ /).map {|i| i.to_i}
  hs.unshift(0) #indexを合わせる

  h = Hash.new
  (1..m).each {|i|
    a,b = gets.chomp.split(/ /).map {|i| i.to_i}

    h[a] = [] unless h[a]
    h[b] = [] unless h[b]

    h[a] << b
    h[b] << a
  }


  good = []
  h.each do |i,rs|
    #不要？next if rs.empty?

    #hの高さ
    hh = hs[i]

    lower = false
    rs.each { |r|
      if hh < hs[r]
        lower = true
        break
      end
    }

    good << i unless lower
  end

  x = good.length
  puts x
end

main
