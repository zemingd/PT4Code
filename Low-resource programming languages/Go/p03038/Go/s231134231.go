package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	N, M := nextInt(), nextInt()
	As := nextInts(N)

	BCs := make([][]int, M)
	for i := 0; i < M; i++ {
		BCs[i] = nextInts(2)
	}

	sort.Ints(As)
	sort.Sort(BCS(BCs))

	i := 0
	for j := 0; j < M; j++ {
		B, C := BCs[j][0], BCs[j][1]
		if C <= As[i] {
			break
		}
		for B > 0 && i < len(As) && C > As[i] {
			As[i] = C
			B--
			i++
		}
	}

	fmt.Println(Sum(As...))
}

type BCS [][]int

func (bcs BCS) Len() int {
	return len(bcs)
}

func (bcs BCS) Less(i, j int) bool {
	return bcs[i][1] > bcs[j][1]
}

func (bcs BCS) Swap(i, j int) {
	bcs[i], bcs[j] = bcs[j], bcs[i]
}

func Sum(slice ...int) int {
	sum := 0
	for _, v := range slice {
		sum += v
	}
	return sum
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 256), 1e9)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
