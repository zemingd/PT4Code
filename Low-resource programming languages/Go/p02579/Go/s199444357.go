package main

import (
	"bufio"
	"container/heap"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func Scan() string {
	sc.Scan()
	return sc.Text()
}
func iScan() int {
	n, _ := strconv.Atoi(Scan())
	return n
}
func fScan() float64 {
	n, _ := strconv.ParseFloat(Scan(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func SScan(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scan()
	}
	return a
}
func iSScan(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = iScan()
	}
	return a
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
func sum(a []int) int {
	x := 0
	for _, v := range a {
		x += v
	}
	return x
}
func fSum(a []float64) float64 {
	x := 0.
	for _, v := range a {
		x += v
	}
	return x
}

var mod int = 1000000007

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	h, w := iScan(), iScan()
	ch, cw := iScan()+1, iScan()+1
	dh, dw := iScan()+1, iScan()+1
	s := make([]string, h+4)
	s[0] = strings.Repeat("#", w+4)
	s[1] = strings.Repeat("#", w+4)
	s[h+2] = strings.Repeat("#", w+4)
	s[h+3] = strings.Repeat("#", w+4)
	for i := 2; i <= h+1; i++ {
		s[i] = "##" + Scan() + "##"
	}
	edges := make([][]int, 0)
	x := []int{-2, -1, 0, 1, 2}
	for i := 2; i <= h+1; i++ {
		for j := 2; j <= w+1; j++ {
			if string(s[i][j]) == "." {
				for _, v := range x {
					for _, y := range x {
						if v == 0 && y == 0 {
							continue
						}
						if (v == 0 && abs(y) == 1) || (abs(v) == 1 && y == 0) {
							if string(s[i+v][j+y]) != "#" {
								edges = append(edges, []int{i*w + j, (i+v)*w + (j + y), 0})
							}
						} else {
							if string(s[i+v][j+y]) != "#" {
								edges = append(edges, []int{i*w + j, (i+v)*w + (j + y), 1})
							}
						}
					}
				}
			}
		}
	}
	nodes := nodeInitializer((h+4)*(w+4), edges)
	dijkstra(ch*w+cw, nodes)
	ans := (*nodes[dh*w+dw]).cost
	if ans == mod*mod {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}
}

type Node struct {
	edgesTo    []int
	edgesCosts []int
	cost       int
	from       int
	name       int
	index      int
}

type PriorityQueue []*Node

func (pq PriorityQueue) Len() int { return len(pq) }
func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].cost < pq[j].cost
}
func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	pq[i].index = i
	pq[j].index = j
}
func (pq *PriorityQueue) Push(x interface{}) {
	n := len(*pq)
	item := x.(*Node)
	item.index = n
	*pq = append(*pq, item)
}
func (pq *PriorityQueue) Pop() interface{} {
	old := *pq
	n := len(old)
	item := old[n-1]
	old[n-1] = nil
	item.index = -1
	*pq = old[0 : n-1]
	return item
}
func (pq *PriorityQueue) update(item *Node, priority int) {
	item.cost = priority
	heap.Fix(pq, item.index)
}

func nodeInitializer(n int, edges [][]int) []*Node {
	nodes := make([]*Node, n)
	for i := 0; i < n; i++ {
		nodes[i] = &Node{
			edgesTo:    []int{},
			edgesCosts: []int{},
			cost:       mod * mod,
			from:       -1,
			name:       i,
			index:      i,
		}
	}
	for _, e := range edges {
		node := *nodes[e[0]]
		node.edgesTo = append(node.edgesTo, e[1])
		node.edgesCosts = append(node.edgesCosts, e[2])
		nodes[e[0]] = &node
	}
	return nodes
}

func dijkstra(s int, nodes []*Node) {
	n := len(nodes)
	pq := make(PriorityQueue, len(nodes))
	for i := 0; i < n; i++ {
		pq[i] = nodes[i]
	}
	heap.Init(&pq)
	pq.update(nodes[s], 0)
	for len(pq) != 0 {
		currentNode := heap.Pop(&pq).(*Node)
		currentCost := currentNode.cost
		for i, to := range currentNode.edgesTo {
			cost := currentCost + currentNode.edgesCosts[i]
			if cost < (*nodes[to]).cost {
				pq.update(nodes[to], cost)
				nodes[to].from = currentNode.name
			}
		}
	}
}
