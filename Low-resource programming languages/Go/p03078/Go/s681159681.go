package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"sort"
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

//RBNodeDir is
type RBNodeDir int

const (

	//RBNodeLeft 左方向
	RBNodeLeft RBNodeDir = iota

	//RBNodeRight 右方向
	RBNodeRight

	//RBNodeHere ここ
	RBNodeHere
)

//RBNode is
type RBNode struct {
	isRed    bool
	index    int
	parent   *RBNode
	children [2]*RBNode
}

//RBCursor is
type RBCursor struct {
	node *RBNode
	less func(i int, j int) bool
}

func (cur *RBCursor) clone() *RBCursor {
	wrk := *cur
	return &wrk
}

func (cur *RBCursor) root() *RBCursor {

	if cur.node != nil {
		for ; cur.node.parent != nil; cur.node = cur.node.parent {

		}
	}
	return cur
}

func (cur *RBCursor) move(dir RBNodeDir) *RBCursor {
	if cur.node == nil {
		return cur
	}
	rev := dir ^ 1
	if next := cur.node.children[dir]; next != nil {
		for next.children[rev] != nil {
			next = next.children[rev]
		}
		cur.node = next
	} else {
		find := false
		for cur.node.parent != nil {
			now := cur.node
			cur.node = cur.node.parent
			if cur.node.children[rev] == now {
				find = true
				break
			}
		}
		if !find {
			cur.node = nil
		}
	}
	return cur
}
func (cur *RBCursor) find(index int) (*RBCursor, RBNodeDir) {
	cur.root()
	dir := RBNodeHere
	for {
		if cur.less(index, cur.node.index) {
			dir = RBNodeLeft
			next := cur.node.children[dir]
			if next == nil {
				break
			}
			cur.node = next

		} else if cur.less(cur.node.index, index) {
			dir = RBNodeRight
			next := cur.node.children[dir]
			if next == nil {
				break
			}
			cur.node = next
		} else {
			dir = RBNodeHere
			break
		}
	}
	return cur, dir
}

func (cur *RBCursor) add(index int) *RBCursor {
	newNode := &RBNode{index: index, isRed: true}
	cur.root()
	if cur.node != nil {
		pnode, dir := cur.find(newNode.index)
		if dir != RBNodeHere {
			newNode.parent = pnode.node
			newNode.parent.children[dir] = newNode

			wrk := cur.clone()
			wrk.node = newNode
			wrk.opt()
		} else {
			pnode.node.index = newNode.index
			newNode = pnode.node
		}
	}
	cur.node = newNode
	return cur
}

func (node *RBNode) sibiling(child *RBNode) *RBNode {
	dir := RBNodeLeft
	if node.children[RBNodeLeft] == child {
		dir = RBNodeRight
	}
	return node.children[dir]
}

func (node *RBNode) flip(dir RBNodeDir) {
	curGranPa := node.parent
	newParent := node.children[dir]
	newParent.parent, node.parent = node.parent, newParent

	node.children[dir] = newParent.children[dir^1]
	if node.children[dir] != nil {
		node.children[dir].parent = node
	}
	newParent.children[dir^1] = node

	if curGranPa != nil {
		dir = RBNodeLeft
		if curGranPa.children[dir] != node {
			dir ^= 1
		}
		curGranPa.children[dir] = newParent
	}

}
func (cur *RBCursor) opt() {
	node := cur.node
	for node != nil && node.isRed {
		parent := node.parent
		if parent == nil {
			break
		} else if !parent.isRed {
			break
		} else if parent.parent == nil {
			parent.isRed = false
		} else {
			grandparent := parent.parent
			parentsibiling := grandparent.sibiling(parent)
			if parentsibiling != nil && parentsibiling.isRed {
				grandparent.isRed = true
				parent.isRed = false
				parentsibiling.isRed = false
				node = grandparent
			} else {
				dir := RBNodeLeft
				if grandparent.children[dir] != parent {
					dir ^= 1
				}

				if parent.children[dir] != node {
					parent.flip(dir ^ 1)
				}

				grandparent.flip(dir)
				grandparent.parent.isRed = false
				grandparent.isRed = true
				break
			}
		}
	}
}

func (cur *RBCursor) end(dir RBNodeDir) *RBCursor {
	cur.root()
	if cur.node != nil {
		for ; cur.node.children[dir] != nil; cur.node = cur.node.children[dir] {

		}
	}
	return cur
}

func solve(stdin io.Reader, stdout io.Writer) {

	r := NewScannerEx(stdin)
	r.Scan(true)
	x, y, z, k := r.nextInt(), r.nextInt(), r.nextInt(), r.nextInt()
	r.Scan(true)
	a := r.nextStringArray().toInts()
	r.Scan(true)
	b := r.nextStringArray().toInts()
	r.Scan(true)
	c := r.nextStringArray().toInts()

	type cursor struct {
		s          int
		ai, bi, ci int
		cnt        int
	}
	s := make([]*cursor, 0, k*3)
	tree := RBCursor{less: func(a, b int) bool {
		switch {
		case s[a].s != s[b].s:
			return s[a].s > s[b].s
		case s[a].ai != s[b].ai:
			return s[a].ai > s[b].ai
		case s[a].bi != s[b].bi:
			return s[a].bi > s[b].bi
		default:
			return s[a].ci > s[a].ci
		}
	}}
	sAdd := func(pp *cursor) {
		pp.s = a[pp.ai] + b[pp.bi] + c[pp.ci]
		pp.cnt = 1
		s = append(s, pp)
		tree.add(len(s) - 1)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	sort.Sort(sort.Reverse(sort.IntSlice(b)))
	sort.Sort(sort.Reverse(sort.IntSlice(c)))
	sAdd(&cursor{ai: 0, bi: 0, ci: 0})
	cur := tree.clone()

	for i := 0; i < k; i++ {
		pp := s[cur.node.index]
		fmt.Fprintln(stdout, pp.s)
		if pp.ai+1 < x {
			sAdd(&cursor{ai: pp.ai + 1, bi: pp.bi, ci: pp.ci})
		}
		if pp.bi+1 < y {
			sAdd(&cursor{ai: pp.ai, bi: pp.bi + 1, ci: pp.ci})
		}
		if pp.ci+1 < z {
			sAdd(&cursor{ai: pp.ai, bi: pp.bi, ci: pp.ci + 1})
		}
		cur, _ = cur.find(cur.node.index)
		cur.move(RBNodeRight)
	}
}
