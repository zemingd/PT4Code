package main

import (
	"bufio"
	"fmt"
	"os"
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

const AMAX = 100000

func main() {
	sc.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	a := make([]int, n)
	b := make([]int, n)

	for i := 0; i < n; i++ {
		a[i], b[i] = nextInt(), nextInt()
	}

	cnt := make([]int, AMAX+10)
	for i := 0; i < n; i++ {
		cnt[a[i]] += b[i]
	}

	for i, v := range cnt {
		if k <= v {
			fmt.Println(i)
			break
		}
		k -= v
	}

	// k++
	// left := 0
	// right := 0
	// sum := make([]int, n+1)
	// for i := 1; i < n+1; i++ {
	// 	sum[i] = sum[i-1] + b[i-1]

	// }
	// fmt.Println(sum)

	// for i := 0; i < n; i++ {
	// 	if sum[i] < k && k <= sum[i+1] {
	// 		fmt.Println(a[sum[i+1]])
	// 		return
	// 	}
	// }
}
