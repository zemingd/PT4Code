package main

import (
	"fmt"
	"math"
	"os"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	h := scanNums(N)
	//低い順に並べる
	sort.Sort(sort.IntSlice(h))
	min := math.MaxInt64
	for i := 0; i < N-K+1; i++ {
		hmin := h[i]
		hmax := h[i+K-1]
		if hmax-hmin < min {
			min = hmax - hmin
		}
	}
	debug("%v\n", h)
	fmt.Printf("%d\n", min)
}

/**
 * １行に空白区切りで数字を読み込み
 */
func scanNums(len int) (nums []int) {
	nums = make([]int, len)
	for i := 0; i < len; i++ {
		fmt.Scan(&nums[i])
	}

	return
}

//** DEBUG **/
const DEBUG_ENABLE = false

func debug(format string, a ...interface{}) (n int, err error) {
	if DEBUG_ENABLE {
		return fmt.Fprintf(os.Stdout, format, a...)
	} else {
		return 0, nil
	}
}
