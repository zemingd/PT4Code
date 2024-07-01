package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getInts(N int) []int {
	ret := make([]int, N)
	for i := 0; i < N; i++ {
		ret[i] = getInt()
	}
	return ret
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func lowerBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] >= x
	})
	return idx
}

func upperBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] > x
	})
	return idx
}

func calcScore(day int, score, c, last []int) (int, []int) {
	loss := make([]int, 26)
	for i := 0; i < 26; i++ {
		loss[i] = c[i] * (day - last[i])
	}

	ret := 0
	new := make([]int, 26)
	for j := 0; j < 26; j++ {
		new[j] = score[j] - loss[j]
		ret += new[j]
	}

	return ret, new
}

func calcAllScore(D int, days []int, c []int, s [][]int) int {
	last := make([]int, 26)
	score := make([]int, 26)

	ans := 0
	for i := 0; i < D; i++ {
		t := days[i]
		score[t] += s[i][t]
		last[t] = i + 1
		ret, nw := calcScore(i+1, score, c, last)
		score = nw
		ans = ret
		// out(score)
	}
	return ans
}

var tab [366][26]int
var sum [366][26]int
var exe [366]int
var D int
var c []int
var s [][]int

func calc(typ int) {
	score := 0
	last := 0
	for i := 1; i <= D; i++ {
		if tab[i][typ] == 1 {
			score += s[i][typ]
			last = i
		}
		score += c[typ] * (last - i)
		sum[i][typ] = score
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	D = getInt()
	c = getInts(26)
	s = make([][]int, D+1)
	for i := 0; i < D; i++ {
		s[i+1] = getInts(26)
	}

	for i := 1; i <= D; i++ {
		t := rand.Intn(26)
		tab[i][t] = 1
		exe[i] = t + 1
	}
	for i := 0; i < 26; i++ {
		calc(i)
	}

	wr := bufio.NewWriter(os.Stdout)
	defer wr.Flush()
	for i := 1; i <= D; i++ {
		fmt.Fprintln(wr, exe[i])
	}
	// M := getInt()
	// for i := 0; i < M; i++ {
	// 	d, q := getInt(), getInt()-1
	// 	tab[d][q] = 1
	// 	if exe[d] != 0 {
	// 		tab[d][exe[d]-1] = 0
	// 	}
	// 	for i := 0; i < 26; i++ {
	// 		calc(i)
	// 	}
	// 	exe[d] = q + 1
	// 	tot := 0
	// 	for i := 0; i < 26; i++ {
	// 		tot += sum[D][i]
	// 	}
	// 	fmt.Fprintln(wr, tot)
	// }
}
