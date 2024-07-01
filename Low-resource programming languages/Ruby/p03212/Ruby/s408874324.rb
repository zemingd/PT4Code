class Pre753
  attr_reader :n
  def initialize(n,digits=nil)
    @n=n
    if digits
      @digits=digits
    else
      @digits=Array.new(10,0)
      until n==0
        d=n%10
        @digits[d]+=1
        n/=10
      end
    end
  end

  def is753?
    @digits[7]>0&&@digits[5]>0&&@digits[3]>0
  end

  def create_new_pre753(d)
    _dig=@digits.dup
    _dig[d]+=1
    Pre753.new(10*@n+d,_dig)
  end
end

n=gets.to_i

a=[]
digit_num_wise=[7,5,3].map{|d|Pre753.new(d)}
8.times{
  _dnw=[]
  digit_num_wise.each{|pre|
    [7,5,3].each{|d|
      _dnw << pre.create_new_pre753(d)
    }
  }
  _dnw.each{|pre|a << pre if pre.is753?}
  digit_num_wise=_dnw
}

a.sort_by!{|pre|pre.n}
a<< Pre753.new(10**9)
ans=a.bsearch_index{|v|n<v.n}

puts ans