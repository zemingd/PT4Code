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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

type pair struct {
	first  int
	second int
}

type SortBy []pair

func (a SortBy) Len() int      { return len(a) }
func (a SortBy) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool {

	if a[i].second > a[j].second {
		return true
	} else if a[i].second == a[j].second {
		if a[i].first > a[j].first {
			return true
		}
	}

	return false
}

func main() {
	sc.Split(bufio.ScanWords)
	N, M := nextInt(), nextInt()

	pairs := make([]pair, N)
	for i := 0; i < N; i++ {
		pairs[i].first = nextInt()
		pairs[i].second = nextInt()
	}

	// sort.Sort(sort.Reverse(SortBy(pairs)))
	sort.Sort(SortBy(pairs))
	// fmt.Println(pairs)
	ans := 0
	for i := 0; i < N; i++ {
		if pairs[i].first <= M {
			ans += pairs[i].second
			M--
		}

	}

	fmt.Println(ans)
}
