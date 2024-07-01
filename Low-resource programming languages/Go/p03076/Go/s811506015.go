package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	n := 5
	ml := make([]int, n+1)
	mln := make([]int, n+1)

	for i := 1; i < n+1; i++ {
		ml[i] = nextInt()
		if ml[i]%10 == 0 {
			mln[i] = ml[i]
		} else {
			mln[i] = ml[i] + (10 - ml[i]%10)
		}
	}

	var tl []int = []int{1, 2, 3, 4, 5}
	pall := permutations(tl)
	pallnum := make([]int, len(pall))
	for i := 0; i < len(pall); i++ {
		tmp := 0
		for j := 0; j < n; j++ {
			tmp += pall[i][j] * pow(10, n-j-1)
		}
		pallnum[i] = tmp
	}

	mint := 130 * 6
	for i := 0; i < len(pall); i++ {
		nowtime := 0
		for j := 0; j <= 3; j++ {
			nowtime += mln[pall[i][j]]
		}
		nowtime += ml[pall[i][5-1]] //最後だけ切り上げしない

		mint = min(nowtime, mint)
	}

	fmt.Println(mint)

}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func pow(a, b int) int {
	var ret int = 1
	for b > 0 {
		if (b & 1) == 1 {
			ret *= a
		}
		a *= a
		b >>= 1
	}
	return ret
}

// 順列
// 順列作成 (ランダム順)
// var tl []int = []int{1, 2, 3, 4, 5, 6, 7, 8}
// pall := permutations(tl)
//   -> [[],[],[]]
// 数値リスト化 例
//	pallnum := make([]int, len(pall))
//	for i := 0; i < len(pall); i++ {
//		tmp := 0
//		for j := 0; j < n; j++ {
//			tmp += pall[i][j] * pow(10, n-j-1)
//		}
//		pallnum[i] = tmp
//	}
func permutations(arr []int) [][]int {
	var helper func([]int, int)
	res := [][]int{}

	helper = func(arr []int, n int) {
		if n == 1 {
			tmp := make([]int, len(arr))
			copy(tmp, arr)
			res = append(res, tmp)
		} else {
			for i := 0; i < n; i++ {
				helper(arr, n-1)
				if n%2 == 1 {
					tmp := arr[i]
					arr[i] = arr[n-1]
					arr[n-1] = tmp
				} else {
					tmp := arr[0]
					arr[0] = arr[n-1]
					arr[n-1] = tmp
				}
			}
		}
	}
	helper(arr, len(arr))
	return res
}

// ---- readfunc
func scanInit() {
	const cap = 64 * 1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
