N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort

h = Hash.new
HONs = [-1, 2, 5, 5, 4, 5, 6, 3, 7, 6]
As.each{|a| h[HONs[a]] = a}
hons = h.keys.sort

def p(str) end

def pack(n, hons)
  p "-----"
  p "hons: #{hons}"
  ans = Hash.new(0)
  if hons.empty?
    return nil
  elsif n < hons[0]
    return nil
  elsif n % hons[0] == 0
    ans[hons[0]] = n / hons[0]
    return ans
  else
    min_i = n / hons[0] - 1
    #p "min_i: #{min_i}"
    new_hons = hons[1..-1]
    while min_i >= 0
      p "new_hons: #{new_hons}"
      p "remaining: #{n - hons[0]*min_i}"
      ans = pack(n - hons[0]*min_i, new_hons)
      p "ans1: #{ans}"
      unless ans.nil?
        ans[hons[0]] = min_i
        p "ans2: #{ans}"
        return ans
      else
        min_i -= 1
        p "min_i2: #{min_i}"
      end
    end
    return nil
  end
end

ansH = pack(N, hons)
puts ansH.keys.sort.reverse.map{|hon| h[hon].to_s * ansH[hon]}.join('')