# https://atcoder.jp/contests/abc166/tasks/abc166_c
# at_coder_friends test-all C.rb
# require 'pry'

N, M = gets.split.map(&:to_i)
Hs = gets.split.map(&:to_i)
As = Array.new(M)
Bs = Array.new(M)
m_h = Hash.new{|h,k| h[k] = []}
M.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
  m_h[As[i]] << Bs[i]
  m_h[Bs[i]] << As[i]
end

#p "m_h=#{m_h}"

fond_indexes = []
N.times do |i|
  hs = m_h[i+1]
  myh = Hs[i]
  if hs.size > 0
    myh_is_highest = hs.all? do |h|
      myh >= Hs[h-1]
    end
    if myh_is_highest
      fond_indexes << i
    end
  end
  #p "i=#{i}, myh=#{myh}, hs=#{hs},fond_indexes=#{fond_indexes}"
end
#p fond_indexes

ans = fond_indexes.size

puts ans
