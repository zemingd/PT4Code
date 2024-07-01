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

type line struct {
	idx int
	x   int
	dir int
}

type lineSorter []*line

func (a lineSorter) Len() int      { return len(a) }
func (a lineSorter) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a lineSorter) Less(i, j int) bool {
	if a[i].x != a[j].x {
		return a[i].x < a[j].x
	}
	return a[i].dir < a[j].dir

}

type mapSorter []*map[int]int

func (a mapSorter) Len() int           { return len(a) }
func (a mapSorter) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a mapSorter) Less(i, j int) bool { return len(*a[i]) > len(*a[j]) }

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

//RBTree is
type RBTree struct {
	Node *RBNode
	less func(i int, j int) bool
}

//RBCursor is
type RBCursor RBTree

//NewTree is
func NewTree(less func(i int, j int) bool) *RBTree {
	tree := &RBTree{less: less}
	return tree
}

//Cursor is
func (cur *RBTree) Cursor() *RBCursor {
	wrk := RBCursor(*cur)
	return &wrk
}

func (cur *RBTree) root() *RBTree {

	if cur.Node != nil {
		for ; cur.Node.parent != nil; cur.Node = cur.Node.parent {

		}
	}
	return cur
}

//Move is
func (cur *RBCursor) Move(dir RBNodeDir) *RBCursor {
	rev := dir ^ 1
	if next := cur.Node.children[dir]; next != nil {
		for next.children[rev] != nil {
			next = next.children[rev]
		}
		cur.Node = next
	} else {
		find := false
		for cur.Node.parent != nil {
			now := cur.Node
			cur.Node = cur.Node.parent
			if cur.Node.children[rev] == now {
				find = true
				break
			}
		}
		if !find {
			cur.Node = nil
		}
	}
	return cur
}

//Find is
func (cur *RBTree) Find(Index int) (*RBTree, RBNodeDir) {
	dir := RBNodeLeft
	if cur.Node == nil {
		return cur, dir
	}
	cur.root()
	for {
		if cur.less(Index, cur.Node.Index) {
			dir = RBNodeLeft
			next := cur.Node.children[dir]
			if next == nil {
				break
			}
			cur.Node = next

		} else if cur.less(cur.Node.Index, Index) {
			dir = RBNodeRight
			next := cur.Node.children[dir]
			if next == nil {
				break
			}
			cur.Node = next
		} else {
			dir = RBNodeHere
			break
		}
	}
	return cur, dir
}

//Add is
func (cur *RBTree) Add(Index int) *RBTree {
	newNode := &RBNode{Index: Index, isRed: true}
	cur.root()
	if cur.Node != nil {
		pnode, dir := cur.Find(newNode.Index)
		if dir != RBNodeHere {
			newNode.parent = pnode.Node
			newNode.parent.children[dir] = newNode
			newNode.opt()
		} else {
			pnode.Node.Index = newNode.Index
			newNode = pnode.Node
		}
	}
	cur.Node = newNode
	return cur
}

func (Node *RBNode) flip(dir RBNodeDir) {
	curGranPa := Node.parent
	newParent := Node.children[dir]
	if curGranPa != nil {
		curGranPa.children[Node.dir()] = newParent
	}
	newParent.parent, Node.parent = Node.parent, newParent

	Node.children[dir] = newParent.children[dir^1]
	if Node.children[dir] != nil {
		Node.children[dir].parent = Node
	}
	newParent.children[dir^1] = Node

}
func (Node *RBNode) dir() RBNodeDir {
	dir := RBNodeLeft
	if Node.parent.children[dir] != Node {
		dir = RBNodeRight
	}
	return dir
}
func (Node *RBNode) opt() {
	for Node != nil && Node.isRed {
		parent := Node.parent
		if parent == nil {
			break
		} else if !parent.isRed {
			break
		} else if parent.parent == nil {
			parent.isRed = false
		} else {
			grandparent := parent.parent
			parentsibling := grandparent.children[parent.dir()^1]
			if parentsibling != nil && parentsibling.isRed {
				grandparent.isRed = true
				parent.isRed = false
				parentsibling.isRed = false
				Node = grandparent
			} else {
				dir := parent.dir()

				if parent.children[dir] != Node {
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

//End is
func (cur *RBTree) End(dir RBNodeDir) *RBCursor {
	cur.root()
	if cur.Node != nil {
		for ; cur.Node.children[dir] != nil; cur.Node = cur.Node.children[dir] {

		}
	}
	return cur.Cursor()
}

func (Node *RBNode) cut() {
	if Node.parent != nil {
		Node.parent.children[Node.dir()] = nil
	}
}

func (Node *RBNode) hasDir() RBNodeDir {
	dir := RBNodeLeft
	if Node.children[dir] == nil {
		dir = RBNodeRight
		if Node.children[dir] == nil {
			dir = RBNodeHere
		}
	}
	return dir
}

//Delete is
func (cur *RBTree) Delete(Index int) (ret bool) {
	wcur, dir := cur.Find(Index)
	if dir != RBNodeHere {
		return
	}
	delNode := wcur.Node
	ret = true

	dir = delNode.hasDir()

	if delNode.children[RBNodeLeft] != nil &&
		delNode.children[RBNodeRight] != nil {
		var wrk *RBCursor
		if dir != RBNodeHere {
			wrk = wcur.Cursor().Move(dir)
			delNode.Index = wrk.Node.Index
			delNode = wrk.Node
			dir = delNode.hasDir()
		}
	}

	if dir == RBNodeHere {
		if delNode.isRed {
			delNode.cut()
			cur.Node = delNode.parent
			return
		}
	} else {
		wrk := delNode.children[dir]
		delNode.Index = wrk.Index
		wrk.cut()
		return
	}

	Node := delNode
	for {
		parent := Node.parent
		if parent == nil {
			break
		}

		dir := Node.dir()
		dirOther := dir ^ 1
		sibling := parent.children[dirOther]

		if sibling.isRed {
			//sibling is Red
			parent.flip(dirOther)
			sibling.isRed = false
			parent.isRed = true
			sibling = parent.children[dirOther]
		}
		//sibling is Black

		nephew := sibling.children[dirOther]
		if nephew == nil || !nephew.isRed {
			//far nephew is Black
			nephew = sibling.children[dir]
			if nephew == nil || !nephew.isRed {
				//near nephew is Black
				sibling.isRed = true
				if parent.isRed {
					parent.isRed = false
					break
				} else {
					Node = parent
					continue
				}
			}
			//near nephew is Red and far nephew is Black
			sibling.flip(dir)
			sibling, nephew = nephew, sibling
			sibling.isRed = false
			nephew.isRed = true
		}
		//sibling is Black && far nephew is Red

		parent.flip(dirOther)
		sibling.isRed = parent.isRed
		parent.isRed = false
		nephew.isRed = false
		break
	}
	delNode.cut()
	cur.Node = delNode.parent
	return
}

func solve(stdin io.Reader, stdout io.Writer) {

	r := NewScannerEx(stdin)
	r.Scan(true)
	n := r.nextInt()
	lines := make([]*line, n*2)
	for i := 0; i < len(lines); i += 2 {
		r.Scan(true)
		x, l := r.nextInt(), r.nextInt()
		lines[i] = &line{idx: i / 2, x: x - l + 1, dir: 1}
		lines[i+1] = &line{idx: i / 2, x: x + l, dir: -1}
	}

	type treem struct {
		mp  map[int]int
		idx int
	}
	sort.Sort(lineSorter(lines))
	ll := make([]treem, n)
	for i := range ll {
		ll[i].idx = i
		ll[i].mp = map[int]int{}
	}

	buf := make(map[int]int, n)
	for i := range lines {
		cur := lines[i]
		if cur.dir > 0 {
			for v := range buf {
				ll[v].mp[cur.idx] = v
				ll[cur.idx].mp[v] = cur.idx
			}
			buf[cur.idx] = 1
		} else {
			delete(buf, cur.idx)
		}

	}

	tree := NewTree(func(i, j int) bool {
		switch {
		case len(ll[i].mp) != len(ll[j].mp):
			return len(ll[i].mp) > len(ll[j].mp)
		default:
			return ll[i].idx < ll[j].idx
		}
	})
	for i := range ll {
		if len(ll[i].mp) > 0 {
			tree.Add(i)
		}
	}
	ans := n
	for tree.Node != nil {
		idx := tree.End(RBNodeLeft).Node.Index
		llp := ll[idx]
		tree.Delete(idx)
		for s, v := range llp.mp {
			ans--
			tree.Delete(s)
			delete(ll[v].mp, s)
			delete(ll[s].mp, v)
			if len(ll[s].mp) > 0 {
				tree.Add(s)
			}

		}
	}
	fmt.Fprintln(stdout, ans)
}
