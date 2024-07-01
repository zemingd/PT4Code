package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc *bufio.Scanner

func init() {
	// 100MB
	bufsize := 100 * 1024 * 1024
	sc = bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, bufio.MaxScanTokenSize), bufsize)
	sc.Split(bufio.ScanWords)
}
func readInt() int              { return readIntArray(1)[0] }
func readInt2() (int, int)      { a := readIntArray(2); return a[0], a[1] }
func readInt3() (int, int, int) { a := readIntArray(3); return a[0], a[1], a[2] }
func readIntArray(n int) []int {
	s := readStringArray(n)
	a := make([]int, n)
	for i := range a {
		a[i], _ = strconv.Atoi(s[i])
	}
	return a
}
func readString() string            { return readStringArray(1)[0] }
func readString2() (string, string) { a := readStringArray(2); return a[0], a[1] }
func readStringArray(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i] = sc.Text()
	}
	return a
}
func max(ns ...int) int {
	max := ns[0]
	for _, n := range ns {
		if n > max {
			max = n
		}
	}
	return max
}
func min(ns ...int) int {
	min := ns[0]
	for _, n := range ns {
		if n < min {
			min = n
		}
	}
	return min
}
func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

type Node struct {
	ID     int
	Follow map[int]*Node
	Block  map[int]*Node
}

func (n *Node) String() string {
	followList := make([]int, 0, len(n.Follow))
	for k := range n.Follow {
		followList = append(followList, k)
	}
	blockList := make([]int, 0, len(n.Block))
	for k := range n.Block {
		blockList = append(blockList, k)
	}

	return fmt.Sprintf("ID: %d, Follow: %v, Block: %v", n.ID, followList, blockList)
}

func (n *Node) Search(target int, seen map[int]struct{}) int {
	// seen node
	if _, ok := seen[n.ID]; ok {
		//fmt.Printf("Already seen [%d]\n", n.ID)
		return 0
	}

	seen[n.ID] = struct{}{}
	var count int
	if _, ok := n.Block[target]; !ok {
		// add own
		count++
	}

	for _, f := range n.Follow {
		//fmt.Printf("Search[%d] start\n", f.ID)
		count += f.Search(target, seen)
	}

	if target == n.ID {
		// remove own
		count--
		// remove neighbor
		count -= len(n.Follow)
	}

	return count
}

func main() {
	N, M, K := readInt3()
	Nodes := make([]*Node, N+1)
	for i := 1; i <= N; i++ {
		Nodes[i] = &Node{
			ID:     i,
			Follow: map[int]*Node{},
			Block:  map[int]*Node{},
		}
	}

	for i := 0; i < M; i++ {
		a, b := readInt2()
		Nodes[a].Follow[Nodes[b].ID] = Nodes[b]
		Nodes[b].Follow[Nodes[a].ID] = Nodes[a]
	}

	for i := 0; i < K; i++ {
		c, d := readInt2()
		Nodes[c].Block[Nodes[d].ID] = Nodes[d]
		Nodes[d].Block[Nodes[c].ID] = Nodes[c]
	}

	//for i := 1; i <= N; i++ {
	//	fmt.Println(Nodes[i])
	//}

	cand := make([]string, 0, N)
	for i := 1; i <= N; i++ {
		cand = append(cand, strconv.Itoa(Nodes[i].Search(Nodes[i].ID, map[int]struct{}{})))
	}
	fmt.Println(strings.Join(cand, " "))
}
