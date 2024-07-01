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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

const INF = 100000001000000

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	H := make([]int, N)
	for i := 0; i < N; i++ {
		H[i] = nextInt()
	}

	dp := make([]int, N)
	for i := 0; i < N; i++ {
		dp[i] = INF
	}

	for i := 0; i < N; i++ {

		key := UpperBound(dp, H[i])
		dp[key] = H[i]

	}

	ans := N
	for i := 0; i < N; i++ {
		if dp[i] == INF {
			ans--
		}
	}

	if ans >= N-1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

func LowerBound(t []int, k int) int {
	lb := -1
	ub := len(t)
	for ub-lb > 1 {
		mid := (lb + ub) / 2

		if t[mid] >= k {
			ub = mid
		} else {
			lb = mid
		}
	}
	return ub
}

func UpperBound(t []int, k int) int {
	lb := -1
	ub := len(t)
	for ub-lb > 1 {
		mid := (lb + ub) / 2

		if t[mid] <= k {
			lb = mid
		} else {
			ub = mid
		}
	}
	return ub
}
