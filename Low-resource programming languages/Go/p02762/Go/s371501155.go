package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"

)


func main() {
	solve(os.Stdin, os.Stdout)
}

type ReaderEx struct {
	baseScanner *bufio.Scanner
	words       []string
	nextWordIdx func() int
	initWordIdx func(int)
}

func NewScannerEx(stdin io.Reader) *ReaderEx {
	var this ReaderEx
	var idx int
	var wordsCnt int
	this.baseScanner = bufio.NewScanner(stdin)
	this.baseScanner.Buffer(make([]byte, 0), 1E+11)
	this.nextWordIdx = func() int {
		cur := idx
		idx = (idx + 1) % wordsCnt
		return cur
	}
	this.initWordIdx = func(wc int) {
		idx = 0
		wordsCnt = wc
	}
	return &this
}

func (me *ReaderEx) Scan(doSplit bool) (isScanned bool) {
	isScanned = me.baseScanner.Scan()
	if doSplit {
		me.words = strings.Fields(me.baseScanner.Text())
	} else {
		me.words = []string{me.baseScanner.Text()}
	}
	me.initWordIdx(len(me.words))
	return
}

func (me *ReaderEx) nextBytes() []byte {
	return []byte(me.words[me.nextWordIdx()])
}
func (me *ReaderEx) nextString() string {
	return me.words[me.nextWordIdx()]
}

type StringArray []string

func (me *ReaderEx) nextStringArray() StringArray {
	return me.words[me.nextWordIdx():]
}

func (me StringArray) toStrings() []string {
	return me
}

func (me StringArray) toInts() []int {
	strValues := me.toStrings()
	values := make([]int, len(strValues))
	for i, v := range strValues {
		n, err := strconv.Atoi(v)
		if err != nil {
			panic(err)
		}
		values[i] = n
	}
	return values
}
func (me *ReaderEx) nextInt() int {
	n, err := strconv.Atoi(me.words[me.nextWordIdx()])

	defer func() {
		if err != nil {
			panic(fmt.Sprintf("getInt(%d)", n))
		}
	}()
	return n
}

func pow(x, y, mod int) (ans int) {

	ans = 1
	for bit := 1 << uint(math.Floor(math.Log2(float64(y)))); ; bit >>= 1 {
		if y&bit != 0 {
			ans *= x
			if mod > 0 {
				ans %= mod
			}
		}
		if bit <= 1 {
			return
		}
		ans *= ans
		if mod > 0 {
			ans %= mod
		}
	}
}

type factType struct {
	prime int
	count int
}

func fact(n int) (facts []*factType) {

	for i := 2; i*i <= n; i++ {
		if n%i == 0 {
			fa := factType{prime: i}
			for n%fa.prime == 0 {
				n /= fa.prime
				fa.count++
			}
			facts = append(facts, &fa)
		}
	}
	if n > 1 {
		facts = append(facts, &factType{prime: n, count: 1})
	}
	return facts
}
func dec2bin(n int) (ret []bool) {
	for bit := 1 << uint(math.Floor(math.Log2(float64(n)))); ; bit >>= 1 {
		ret = append(ret, n&bit != 0)

		if bit <= 1 {
			return
		}
	}

}

func abs(v int) int {
	if v < 0 {
		v = -v
	}
	return v
}

func b2i(b bool) (i int) {
	if b {
		i = 1
	} else {
		i = 0
	}
	return
}

//Edge is
type Edge struct {
	node   *Node
	Bridge *Bridge
}

//Node is
type Node struct {
	id    int
	edges []*Edge
	block []*Node
	uni   *UnionG
}

//Bridge is
type Bridge struct {
	edges [2]Edge
}

//NewBridge is
func NewBridge(a, b *Node) (bridge *Bridge) {
	bridge = &Bridge{}
	bridge.edges = [...]Edge{{node: a, Bridge: bridge}, {node: b, Bridge: bridge}}
	a.edges = append(a.edges, &bridge.edges[1])
	b.edges = append(b.edges, &bridge.edges[0])
	return
}

//Another is
func (edge *Edge) Another() (another *Edge) {
	Bridge := edge.Bridge
	if &Bridge.edges[0] == edge {
		another = &Bridge.edges[1]
	} else {
		another = &Bridge.edges[0]
	}
	return
}

func nodeRead() {
	// for i := 1; i <= n; i++ {
	// 	nodes[i] = Node{id: i}
	// }

	// for i, end := 1, n-1; i <= end; i++ {
	// 	r.Scan(true)
	// 	NewBridge(&nodes[r.nextInt()], &nodes[r.nextInt()])
	// }

}

type UnionG struct {
	parent *UnionG
	nodes  map[*Node]bool
}

func (uni *UnionG) top() *UnionG {
	cur := uni
	pack := []*UnionG{}
	for cur.parent != nil {
		pack = append(pack, cur)
		cur = cur.parent
	}
	for _, p := range pack {
		p.parent = cur
	}
	return cur
}
func solve(stdin io.Reader, stdout io.Writer) {

	r := NewScannerEx(stdin)
	r.Scan(true)
	n, m, k := r.nextInt(), r.nextInt(), r.nextInt()
	nodes := make([]Node, n+1)
	for i := 1; i <= n; i++ {
		nodes[i] = Node{id: i, block: []*Node{}}
	}
	for i := 0; i < m; i++ {
		r.Scan(true)
		b := r.nextStringArray().toInts()
		NewBridge(&nodes[b[0]], &nodes[b[1]])
		for i := 0; i < 2; i++ {
			node := &nodes[b[i]]
			node.block = append(node.block, &nodes[b[i^1]])
		}
	}
	for i := 0; i < k; i++ {
		r.Scan(true)
		b := r.nextStringArray().toInts()
		for i := 0; i < 2; i++ {
			node := &nodes[b[i]]
			node.block = append(node.block, &nodes[b[i^1]])
		}
	}

	type Stk struct {
		node *Node
	}

	for i := 1; i <= n; i++ {
		if nodes[i].uni != nil {
			continue
		}
		nodes[i].uni = &UnionG{nodes: map[*Node]bool{&nodes[i]: true}}
		stack := make([]*Stk, 0, n)
		stack = append(stack, &Stk{node: &nodes[i]})

		for len(stack) > 0 {
			cur := stack[len(stack)-1]
			stack = stack[:len(stack)-1]

			ptop := cur.node.uni.top()
			for _, edg := range cur.node.edges {
				if edg.node.uni == nil {
					ptop.nodes[edg.node] = true
					edg.node.uni = ptop
					stack = append(stack, &Stk{node: edg.node})
				}
			}
		}
	}

	ans := []string{}
	for i := 1; i <= n; i++ {
		cnt := len(nodes[i].uni.nodes)
		for _, node := range nodes[i].block {
			if nodes[i].uni.nodes[node] {
				cnt--
			}
		}
		ans = append(ans, fmt.Sprint(cnt-1))
	}
	fmt.Fprintln(stdout, strings.Join(ans, " "))
}
