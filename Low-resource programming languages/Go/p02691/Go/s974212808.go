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

var N int
var h []int

func main() {
	sc.Split(bufio.ScanWords)
	nextInt(&N)
	h = make([]int, N)
	nextInts(&h)

	plus := make([]int, N)
	minusMap := map[int]int{}
	for i := 0; i < N; i++ {
		plus[i] = i + h[i]
		minusMap[i-h[i]]++
	}
	var ans int

	for i := 0; i < N; i++ {
		ans += minusMap[plus[i]]
	}
	fmt.Printf("%d", ans)
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

func nextInt64(A ...*int64) {
	L := strings.Split(nextLine(), " ")
	for i, a := range A {
		*a, _ = strconv.ParseInt(L[i], 0, 64)
	}
}
