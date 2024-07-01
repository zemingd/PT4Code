#exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000'},'/usr/bin/ruby', $0) if !ENV['RUBY_THREAD_VM_STACK_SIZE']
require 'prime'

def inpf() a=gets.chomp.split(" ").map(&:to_f)end

def inps() a=gets.chomp.split(" ")end

def copy(a) Marshal.load(Marshal.dump(a)) end

def kaijo(n,r = 10**9+7)(n < 2)? 1 : (2..n).inject{|memo,u|memo=(memo*u)%r} end

def na(n,d=0) Array.new(n,d)end

def na2(n,m,d=0) Array.new(n){Array.new(m,d)}end

def na3(n,m,l,d=0) Array.new(n){Array.new(m){Array.new(l,d)}}end

def inp() a=gets.chomp.split(" ").map(&:to_i)end

def r_up(a, b) (a+b-1)/b end

def sum(a) a.inject(:+) end

def big(a,b) return (a>b)? a:b end

def small(a,b) return (a<b)? a:b end
hon = [2,4,5,7,9]
pon = [0,1,6,8]
bon = [3]
c = gets[-1]
drf = ["hon","pon","bon"]
drf.each do |arr_name|
  eval("if(#{arr_name}.include?(c.to_i))
         puts '#{arr_name}';exit;
        end")
end
