package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func max(a int, b int) int {
	if a >= b {
		return a
	}
	return b
}

type Node struct {
	Index     int
	Value     int
	Neighbors []*Node
	Len       int
	IsSearched  bool
}

var nodes []*Node
var already map[int]bool

// dp[i]: 長さiの増加部分列において最後の値の最小値
func search(n *Node, dp []int) {
	if n.IsSearched {
		return
	}
	n.IsSearched = true

	idx := sort.SearchInts(dp, n.Value)
	befVal := dp[idx]
	dp[idx] = n.Value
	n.Len = sort.SearchInts(dp, MAX_INT)
	for _, to := range n.Neighbors {
		search(to, dp)
	}
	dp[idx] = befVal
}

func solve(N int, a []int, u []int, v []int) []int {
	//fmt.Printf("%v, %v, %v\n", a, u, v)
	res := make([]int, N)
	nodes = make([]*Node, N)
	for i := 0; i < N; i++ {
		nodes[i] = &Node{i, a[i], nil, 0, false}
	}
	for i := 0; i < N-1; i++ {
		nodes[u[i]-1].Neighbors = append(nodes[u[i]-1].Neighbors, nodes[v[i]-1])
		nodes[v[i]-1].Neighbors = append(nodes[v[i]-1].Neighbors, nodes[u[i]-1])
	}

	dp := make([]int, N)
	for i:=0; i<N; i++ {
		dp[i] = MAX_INT
	}
	//fmt.Printf("準備完了！！\n")
	search(nodes[0], dp)

	for i := 0; i < N; i++ {
		res[i] = nodes[i].Len
	}
	//fmt.Printf("%#v\n", nodes)
	return res
}


func main() {
	sc.Split(bufio.ScanWords)
	var N, K int
	nextInt(&N, &K)
	var d = make([]int, K)
	var A = make([][]int, K)

	var have = make([]int, N)
	for i := 0; i < K; i++ {
		nextInt(&d[i])
		nextInts(&A[i])
		for _, j := range A[i] {
			have[j-1]++
		}
	}
	var ans int
	for i := 0; i < N; i++ {
		if have[i] == 0 {
			ans++
		}
	}
	//fmt.Printf("N: %d, K: %d, d: %v, A: %v\n", N, K, d, A)
	fmt.Printf("%d", ans)
	//res := solve(N, a, u, v)
	//for _, v := range res {
	//	fmt.Printf("%d\n", v)
	//}
}


const MAX_INT int = 1_000_000_000
var sc = bufio.NewScanner(os.Stdin)

var reader = bufio.NewReaderSize(os.Stdin, 1000000)
var writer = bufio.NewWriter(os.Stdout)

func nextLine() string {
	buffer := make([]byte, 0)
	for true {
		line, isPrefix, err := reader.ReadLine()
		if err != nil {
			panic(err)
		}
		buffer = append(buffer, line...)
		if !isPrefix {
			break
		}
	}
	return string(buffer)
}

func nextInt(A ...*int) {
	L := strings.Split(nextLine(), " ")
	for i, a := range A {
		*a, _ = strconv.Atoi(L[i])
	}
}
func nextInts(A *[]int) {
	L := strings.Split(nextLine(), " ")
	(*A) = make([]int, len(L))
	for i, l := range L {
		(*A)[i], _ = strconv.Atoi(l)
	}
}

func nextInt64() int64 {
	sc.Scan()
	hoge := sc.Text()
	i, e := strconv.ParseInt(hoge, 0, 64)
	if e != nil {
		panic(e)
	}
	return i
}
