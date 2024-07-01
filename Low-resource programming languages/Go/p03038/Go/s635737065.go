package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type pair struct {
	first  int
	second int
}

type SortBy []pair

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return a[i].second < a[j].second }

func main() {
	sc.Split(bufio.ScanWords)

	N, M := nextInt(), nextInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	bc := make([]pair, M)
	for i := 0; i < M; i++ {
		B, C := nextInt(), nextInt()
		bc[i] = pair{first: B, second: C}
	}

	sort.Ints(A)
	sort.Sort(sort.Reverse(SortBy(bc)))

	ans := 0
	k := 0
	for _, bcc := range bc {
		for i := 0; i < bcc.first; i++ {
			if k >= N {
				break
			}
			ans += max(A[k], bcc.second)
			k++
		}
	}

	for i := k; i < N; i++ {
		ans += A[i]
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
