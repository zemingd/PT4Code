package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func min(v1, v2 int) int {
	if v1 < v2 {
		return v1
	}
	return v2
}

func main() {
	var dp [100005]int

	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	var h []int
	for i := 0; i < n; i++ {
		h = append(h, nextInt())
	}

	dp[0] = 0
	for i := 1; i < n; i++ {
		dp[i] = math.MaxInt32
		for j := 1; j <= k && i-j >= 0; j++ {
			dp[i] = min(dp[i], dp[i-j]+abs(h[i]-h[i-j]))
		}
	}

	ans := dp[n-1]
	fmt.Println(ans)
}
