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
	come  int
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

type Stack struct {
	level   int
	preNode *Node
	node    *Node
}

//RBNodeDir is
type RBNodeDir int

const (

	//RBNodeLeft is
	RBNodeLeft RBNodeDir = iota

	//RBNodeRight is
	RBNodeRight

	//RBNodeHere is
	RBNodeHere
)

//RBNode is
type RBNode struct {
	isRed    bool
	Index    int
	parent   *RBNode
	children [2]*RBNode
}

func solve(stdin io.Reader, stdout io.Writer) {

	r := NewScannerEx(stdin)
	r.Scan(true)
	n := r.nextInt()

	nodes := make([]Node, n)
	for i := 0; i < n; i++ {
		nodes[i] = Node{id: i + 1}
	}

	for i := 0; i < n; i++ {
		r.Scan(true)
		s := r.nextString()
		for si := range s {
			if s[si] == '1' && i < si {
				NewBridge(&nodes[i], &nodes[si])
				fmt.Fprintf(os.Stderr, "%d-%d\n", i+1, si+1)
			}
		}
	}

	ce := 0
	ok := true
	ans := 0

	maxInt := func(a int, vs ...int) int {
		for i := range vs {
			v := &vs[i]
			if a < *v {
				a = *v
			}
		}
		return a
	}
judge:
	for i := 0; i < n; i++ {
		for j := range nodes {
			nodes[j].come = 0
		}
		nodes[i].come = 1
		ce = 0
		stack := make([]*Stack, 0, n)
		stack = append(stack, &Stack{level: 1, node: &nodes[i]})

		for ce < len(stack) {
			stkval := stack[ce]
			ce++

			for _, neither := range stkval.node.edges {
				if neither.node.come > 0 {
					if neither.node.come == stkval.level-1 {
						continue
					}
					if neither.node.come == stkval.level+1 {
						continue
					}
					ok = false
					break judge

				}
				neither.node.come = stkval.level + 1
				stack = append(stack, &Stack{preNode: stkval.node, level: neither.node.come, node: neither.node})
			}

		}
		ans = maxInt(ans, stack[ce-1].level)

	}
	if !ok {
		ans = -1
	}
	fmt.Fprintln(stdout, ans)
}
