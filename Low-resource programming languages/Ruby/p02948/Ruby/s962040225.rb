# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
# MOD=1000000007



# 優先度付きキュー
class PriorityQueue
    # 優先度付きキューのノードクラス
    class Node
      attr_reader :id
      attr_accessor :priority, :value
      @@next_id=0  # 自動でidを付与するために使用
      def initialize(priority,value=nil, id: nil)
        if id.nil?  # idの自動付与
          @id=@@next_id
          @@next_id+=1
        else  # idの手動付与
          @id=id
        end
        @priority=priority
        @value=value
      end
      def self.reset  # idを0からにリセット 
        @@next_id=0
      end
    end
  
    def initialize
      @nodes = [nil]
      @id2index = {}
    end
  
    # Nodeクラスのノードを保存する
    def <<(new_node)
      @nodes << new_node
      @id2index[new_node.id]=@nodes.size-1
      bubble_up(@nodes.size-1)
    end
    alias :push :<<
  
    # 最大優先度のノードを取り出す
    def >>
      return nil if empty?
      hi=@nodes[1]
      ti=@nodes[@nodes.size-1]
      hiid=hi.id
      tiid=ti.id
      temp=@id2index[hiid]
      @id2index[hiid]=@id2index[tiid]
      @id2index[tiid]=temp
      @nodes[1]=ti
      @nodes[@nodes.size-1]=hi
      max=@nodes.pop
      bubble_down(1)
      return max
    end
    alias :pop :>>
  
    def empty?
      return @nodes.size==1
    end
  
    # Nodeクラスの指定されたidの要素の優先度を変更する
    # 指定されたidが存在しないときはfalseを返す
    def change_priority(id,new_priority)
      index=@id2index[id]
      return false if index.nil?
      @nodes[index].priority=new_priority
      bubble_up(index)
      bubble_down(index)
      return true
    end
  
    # 指定されたidが存在しないときは例外を投げる
    def change_priority!(id,new_priority)
      if !change_priority(id,new_priority)
        raise StandardError
      end
      return true
    end
  
    # ヒープ内で適切な位置になるように要素を上に移動させる
    def bubble_up(index)
      while true
        parent_index=index/2
        return if index<=1
        ni=@nodes[index]
        pi=@nodes[parent_index]
        return if pi.priority>=ni.priority
        niid=ni.id
        piid=pi.id
        temp=@id2index[niid]
        @id2index[niid]=@id2index[piid]
        @id2index[piid]=temp
        @nodes[index]=pi
        @nodes[parent_index]=ni
        index=parent_index
      end
    end
    # ヒープ内で適切な位置になるように要素を下に移動させる
    def bubble_down(index)
      while true
        child_index=index*2
        return if child_index>@nodes.size-1
        child_index+=1 if child_index<@nodes.size-1 && @nodes[child_index+1].priority>@nodes[child_index].priority
        ni=@nodes[index]
        ci=@nodes[child_index]
        return if ni.priority>ci.priority
        niid=ni.id
        ciid=ci.id
        temp=@id2index[niid]
        @id2index[niid]=@id2index[ciid]
        @id2index[ciid]=temp
        @nodes[index]=ci
        @nodes[child_index]=ni
        index=child_index
      end
    end
    
  end
  
  
  N,M=gets.split.map(&:to_i)
  task_part=Array.new(10**5+1){Array.new}
  N.times do
    a,b=gets.split.map(&:to_i)
    task_part[a-1] << b
  end
  PQ=PriorityQueue.new
  ans=0
  
  M.times do |t|
    task_part[t].each do |b|
      PQ << PriorityQueue::Node.new(b)
    end
    ans+=PQ.pop.priority if !PQ.empty?
  end
  
  
  puts ans
  