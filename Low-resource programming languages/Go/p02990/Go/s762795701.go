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

func permutation(n int, k int) int {
    v := 1
    if 0 < k && k <= n {
        for i := 0; i < k; i++ {
            v *= (n - i)
        }
    } else if k > n {
        v = 0
    }
    return v
}

func factorial(n int) int {
    return permutation(n, n - 1)
}

func combination(n int, k int) int {
	// mod := 1000000007
    return ((permutation(n, k) / factorial(k)))// + mod) % mod
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	count := 0
	for i := 1; i < k+1; i++ {
		if i > n-k+1 {
			count = 0
		} else if i == 1 {
			count = n - k + 1
		} else {
			blue_pattern := combination(k-1, i-1)
			red_pattern := combination(n-k+1, i)
			count = blue_pattern * red_pattern % 1000000007
		}
		fmt.Println(count)
	}
}
