package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var MOD = 1000000000 + 7

var sc = bufio.NewScanner(os.Stdin)

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
	var sum, ans int
	N := nextInt()
	A := make([]int, N)
	for i := range A {
		A[i] = nextInt()
		sum += A[i]
		sum %= MOD
	}
	for _, a := range A {
		sum -= a
		sum %= MOD
		if 0 > sum {
			sum += MOD
		}
		ans += (a * sum) % MOD
		ans %= MOD
	}
	fmt.Println(ans)
}
