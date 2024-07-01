require 'prime'
require 'set'
require 'tsort'
include Math
def max(a,b);              a > b ? a : b                              end
def min(a,b);              a < b ?  a : b                             end
def swap(a,b);             a, b = b, a                                end
def gif;                   gets.to_i                                  end
def gff;                   gets.to_f                                  end
def gsf;                   gets.chomp                                 end
def gi;                    gets.split.map(&:to_i)                     end
def gf;                    gets.split.map(&:to_f)                     end
def gs;                    gets.chomp.split.map(&:to_s)               end
def gc;                    gets.chomp.split('')                       end
def pr(num);               num.prime_division                         end
def digit(num);            num.to_s.length                            end
def array(s,ini=nil);      Array.new(s){ini}                          end
def darray(s1,s2,ini=nil); Array.new(s1){Array.new(s2){ini}}          end
def rep(num);              num.times{|i|yield(i)}                     end
def repl(st,en,n=1);       st.step(en,n){|i|yield(i)}                 end

class Node
  attr_accessor :id, :edges, :cost, :done, :from
  def initialize(id, edges=[], cost=nil, done=false)
    @id, @edges, @cost, @done = id, edges, cost, done
  end
end
class Edge
  attr_reader :cost, :nid
  def initialize(cost, nid)
    @cost, @nid = cost, nid
  end
end
class Graph
  def initialize(data)
    @nodes =
      data.map do |id, edges|
        edges.map! { |edge| Edge.new(*edge) }
        Node.new(id, edges)
      end
  end
end

class Graph
  def cost(nid, sid)
    dijkstra(sid)
    @nodes.find { |node| node.id == nid }.cost
  end
end

class Graph
  private
  def dijkstra(sid)
    @nodes.each do |node|
      node.cost = node.id == sid ? 0 : nil
      node.done = false
      node.from = nil
    end
    loop do
      done_node = nil
      @nodes.each do |node|
        next if node.done or node.cost.nil?
        done_node = node if done_node.nil? or node.cost >= done_node.cost
      end
      break unless done_node
      done_node.done = true
      done_node.edges.each do |edge|
        to = @nodes.find{ |node| node.id == edge.nid }
        cost = done_node.cost + edge.cost
        from = done_node.id
        if to.cost.nil? || cost >= to.cost
          to.cost = cost
          to.from = from
        end
      end
    end
  end
end

n,m = gi
l  =  Hash.new

rep m do
  a,b,c = gi
  if l[a.to_s] == nil
    l[a.to_s] = []
  end
  if l[b.to_s] == nil
    l[b.to_s] = []
  end
  l[a.to_s] << [c,b.to_s]
  l[b.to_s] << [c,a.to_s]
end
g = Graph.new l
if g.cost 1.to_s,1.to_s != 0
  puts "inf"
else
puts g.cost(1.to_s,n.to_s)
end