#!/usr/bin/ruby
# -*- coding: utf-8 -*-
=begin
ALDS1_3-A

Elementary data structures - Stack
=end

class Rpc
  def initialize(f)
    @a = Array.new(f.length)
    0.upto(f.length-1).each{|i| @a[i] = f[i]}

  end

  def calc()
    st = []
    val=0
    while @a.length > 0 do
      x = @a.shift
      if x =~ /\d+/ then
        st.push x.to_i
      elsif x == "+" then
        st.push(  st.pop + st.pop)
      elsif x == "-" then
        st.push( -st.pop + st.pop)
      elsif x == "*" then
        st.push(  st.pop * st.pop)
      else
        abort "unknown:#{x}"
      end
    end
    st.pop
  end

end

class Main
  def initialize()
    #fh = open("x.txt")
    fh = STDIN
    f = fh.gets.chomp.split
    rp = Rpc.new(f)
    puts rp.calc()
  end
end

if $0==__FILE__ then
  Main.new()
end