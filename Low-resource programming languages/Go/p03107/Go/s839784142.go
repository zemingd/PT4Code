package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

//scanで一行づつ読み込む
var sc = bufio.NewScanner(os.Stdin)
var wtr = bufio.NewWriter(os.Stdout)
var N, ss, ans, A, B, C int

//sort
// array := []int{5, 1, 4, 2, 3}
// sort.Sort(sort.IntSlice(array))
// sort.Sort(sort.Reverse(sort.IntSlice(arr)))

func main() {
	// A := strings.Split(nextLine(), " ")

	X := strings.Split(nextLine(), " ")

	// Z := strings.Split(nextLine(), " ")
	// n, _ := strconv.Atoi(input[0])

	S := X[0]
	// B, _ := strconv.Atoi(X[1])
	// K, _ := strconv.Atoi(X[2])

	// K, _ := strconv.Atoi(X[2]) //strconv.ParseInt(X[2], 10, 64)

	// Y := strings.Split(nextLine(), " ")

	// q := make(que, 0)
	// taQue := make(tailAscQue, M)

	// ch := make(que, M)
	// mp := make(map[int]item, M)
	var ans = 0
	N := len(S)
	count := 0
	slice := make([]int, 0)
	for i := 0; i < N; i++ {

		r := int(S[i] - '0')
		if len(slice) == 0 {
			slice = append(slice, r)
		} else {
			if slice[0] == r {
				slice = append(slice, r)

			} else {
				ans += 2
				slice = slice[:len(slice)-1]
			}
		}
	}

	// slice = make([]int, 0)
	// for i := N - 1; i >= 0; i-- {

	// 	r := int(S[i] - '0')
	// 	if r == int(S[N-1]-'0') {
	// 		slice = append(slice, r)
	// 	} else {
	// 		if len(slice) > 0 {
	// 			count += 2
	// 			slice = slice[:len(slice)-1]
	// 		}
	// 	}
	// }
	ans = max(ans, count)

	/*文字列連結高速化
	初期化:buf := make([]byte, 0,N+1)
	連結:buf=append(buf,str)
	出力:string(buf)
	*/
	// sort.Sort(sort.Reverse(dp[M][N]))

	fmt.Fprintln(wtr, ans)
	_ = wtr.Flush()
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
	x int
	l int
	r int
}

type que []item

func (p *que) Len() int {
	return len(*p)
}

func (p *que) Swap(i, j int) {
	(*p)[i], (*p)[j] = (*p)[j], (*p)[i]
}

func (p *que) Less(i, j int) bool {

	// return p[i].point > p[j].point //p[i].x+p[i].y > p[j].x+p[j].y
	return (*p)[i].x > (*p)[j].x
}

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

type tailAscQue []item

func (p *tailAscQue) Len() int {
	return len(*p)
}

func (p *tailAscQue) Swap(i, j int) {
	(*p)[i], (*p)[j] = (*p)[j], (*p)[i]
}

func (p *tailAscQue) Less(i, j int) bool {

	return (*p)[i].r < (*p)[j].r
}

func (p *tailAscQue) Push(in item) {
	var tmp *tailAscQue = new(tailAscQue)
	*tmp = make(tailAscQue, len(*p)+1)
	copy(*tmp, *p)
	*tmp = append(*tmp, in)
	*p = *tmp
	sort.Sort(p)
}

func (p *tailAscQue) Pop() item {
	res := (*p)[0]
	*p = (*p)[1:]
	return res
}

func (p *tailAscQue) Peek() item {
	return (*p)[0]
}
