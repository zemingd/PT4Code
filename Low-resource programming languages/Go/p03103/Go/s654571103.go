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

	// Y := strings.Split(nextLine(), " ")
	// n, _ := strconv.Atoi(input[0])

	N, _ := strconv.Atoi(X[0])
	M, _ := strconv.Atoi(X[1])
	// C, _ := strconv.Atoi(X[2])
	var ans int64 = 0
	count := 0

	// K, _ := strconv.Atoi(X[2]) //strconv.ParseInt(X[2], 10, 64)

	// Y := strings.Split(nextLine(), " ")

	// q := make(que, 0)
	// taQue := make(tailAscQue, M)

	// ch := make(que, M)
	// mp := make(map[int]item, M)
	// ans := make([]int64, M)

	// Y := strings.Split(nextLine(), " ")
	// B := make([]int, M)

	// for i := 0; i < M; i++ {
	// 	B[i], _ = strconv.Atoi(Y[i])
	// }
	arr := make(que, N)

	for i := 0; i < N; i++ {
		Z := strings.Split(nextLine(), " ")

		l, _ := strconv.Atoi(Z[0])
		r, _ := strconv.Atoi(Z[1])
		arr[i] = item{l, r}
	}
	sort.Sort(arr)
	for i := 0; i < N; i++ {

		l := arr[i].l
		r := arr[i].r
		if r+count >= M {

			res := M - count
			ans += int64(res * l)
			break
		} else {
			count += r
			ans += int64(l * r)
		}

	}

	fmt.Fprintln(wtr, ans)

	/*文字列連結高速化
	初期化:buf := make([]byte, 0,N+1)
	連結:buf=append(buf,str)
	出力:string(buf)
	*/
	// sort.Sort(sort.Reverse(dp[M][N]))

	// fmt.Fprintln(wtr, ans)
	_ = wtr.Flush()
}

func fact(n int64, c int) int64 {
	for i := 1; i <= c; i++ {
		n *= n - int64(i)
	}
	return n
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
func max(a, b int) int {
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
