package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

//scanで一行づつ読み込む
var sc = bufio.NewScanner(os.Stdin)
var wtr = bufio.NewWriter(os.Stdout)

// var N, ss, ans, A, B, C int

//sort
// array := []int{5, 1, 4, 2, 3}
// sort.Sort(sort.IntSlice(array))
// sort.Sort(sort.Reverse(sort.IntSlice(arr)))

func main() {
	// A := strings.Split(nextLine(), " ")

	X := strings.Split(nextLine(), " ")
	N, _ := strconv.Atoi(X[0])
	Y := strings.Split(nextLine(), " ")
	S := Y[0]
	w := 0
	b := 0
	s := []rune(S)
	for _, val := range s {
		if string(val) == "#" {
			b++
		}
	}

	count := 0
	white := false
	for i := N - 1; i >= 0; i-- {
		val := string(s[i])
		if white && val == "#" {
			w += count
			count = 0
		}
		if val == "." {
			count++
			white = true
		} else {
			white = false
		}

	}

	// arr := make([]int, N)

	// people, _ := strconv.ParseInt(X[0], 10, 64)
	// input := make([]int64, 0, 5)
	// var tmp = 0

	// fmt.Fprintln(wtr, amount)

	// X := strings.Split(nextLine(), " ")
	// Y := strings.Split(nextLine(), " ")

	// N, _ := strconv.Atoi(X[0])
	// Q, _ := strconv.Atoi(X[1])

	// Y := strings.Split(nextLine(), " ")

	// S := strings.Split(nextLine(), " ")

	// C, _ := strconv.Atoi(X[2])
	// A := int64(tmpA)

	// K, _ := strconv.Atoi(X[2]) //strconv.ParseInt(X[2], 10, 64)

	// Y := strings.Split(nextLine(), " ")

	// q := make(que, 0)
	// taQue := make(tailAscQue, M)

	// ch := make(que, M)
	// mp := make(map[int]item, M)
	// ans := make([]int64, M)

	// for key, val := range alph {
	// 	fmt.Fprintln(wtr, "key:value : ", key, val)

	// }

	// for i := 0; i < N; i++ {
	// 	c := s[i]
	// 	alph[c].cur = i
	// 	alph[c].start = i
	// 	// fmt.Fprintln(wtr, c)

	// }

	fmt.Fprintln(wtr, min(w, b))

	// fmt.Fprintln(wtr, ans)
	/*文字列連結高速化
	初期化:buf := make([]byte, 0,N+1)
	連結:buf=append(buf,str)
	出力:string(buf)
	*/
	// sort.Sort(sort.Reverse(dp[M][N]))

	// fmt.Fprintln(wtr, ans)
	_ = wtr.Flush()
}

type golem struct {
	l     int
	r     int
	cur   int
	start int
}

// func dfs(dp []int, times int, arr []int) {
// 	if times >= N {
// 		ans = min(ans, calc(dp, arr))
// 		return
// 	}

// 	for i := 0; i < 4; i++ {
// 		dp[times] = i
// 		dfs(dp, times+1, arr)
// 	}
// }

type otosidama struct {
	x float64
	v string
}

type LR struct {
	l int
	r int
}

func chmax(a *string, b string) {
	if len(*a) < len(b) {
		*a = b
	} else if len(*a) == len(b) && *a < b {
		*a = b
	}
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}
func com(a, b int) int {

	if a > b {
		return 0
	}
	return 0 //abs(a - b)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}
func sum(a []int) (sum int) {
	for _, num := range a {
		sum += num
	}
	return
}

type item struct {
	// x int
	l int
	r int
}

type que []item

func (p que) Len() int {
	return len(p)
}

func (p que) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p que) Less(i, j int) bool {

	// return p[i].point > p[j].point //p[i].x+p[i].y > p[j].x+p[j].y
	return p[i].l < p[j].l
}

// func (p *que) Len() int {
// 	return len(*p)
// }

// func (p *que) Swap(i, j int) {
// 	(*p)[i], (*p)[j] = (*p)[j], (*p)[i]
// }

// func (p *que) Less(i, j int) bool {

// 	// return p[i].point > p[j].point //p[i].x+p[i].y > p[j].x+p[j].y
// 	return (*p)[i].l < (*p)[j].l
// }

func (p *que) Push(in item) {
	var tmp *que = new(que)
	*tmp = make(que, len(*p)+1)
	copy(*tmp, *p)
	*tmp = append(*tmp, in)
	*p = *tmp
	// p = append(p, in)
	sort.Sort(p)
}

func (p *que) Pop() item {
	res := (*p)[0]
	*p = (*p)[1:]
	return res
}

func (p *que) Peek() item {
	return (*p)[0]
}

// type tailAscQue []item

// func (p *tailAscQue) Len() int {
// 	return len(*p)
// }

// func (p *tailAscQue) Swap(i, j int) {
// 	(*p)[i], (*p)[j] = (*p)[j], (*p)[i]
// }

// func (p *tailAscQue) Less(i, j int) bool {

// 	return (*p)[i].r < (*p)[j].r
// }

// func (p *tailAscQue) Push(in item) {
// 	var tmp *tailAscQue = new(tailAscQue)
// 	*tmp = make(tailAscQue, len(*p)+1)
// 	copy(*tmp, *p)
// 	*tmp = append(*tmp, in)
// 	*p = *tmp
// 	sort.Sort(p)
// }

// func (p *tailAscQue) Pop() item {
// 	res := (*p)[0]
// 	*p = (*p)[1:]
// 	return res
// }

// func (p *tailAscQue) Peek() item {
// 	return (*p)[0]
// }
