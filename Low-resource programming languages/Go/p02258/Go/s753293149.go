package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextStr() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var n int
	n = nextInt()

	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	ans := -10000000000
	// O(n^2)
	// for buy := 0; buy < n-1; buy++ {
	// 	for sell := buy + 1; sell < n; sell++ {
	// 		tmp := r[sell] - r[buy]
	// 		if ans < tmp {
	// 			ans = tmp
	// 		}
	// 	}
	// }

	// O(n)
	minv := r[0]
	for j := 1; j < n; j++ {
		ans = Max(ans, r[j]-minv)
		minv = Min(minv, r[j])
	}

	fmt.Println(ans)
	return
}

func Max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func Min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

