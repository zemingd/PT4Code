package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	N := 0
	var s string
	fmt.Scan(&N)
	buf := map[string]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&s)
		bytes := []byte(s)
		sort.Slice(bytes, func(i, j int) bool { return bytes[i] > bytes[j] })
		buf[string(bytes)]++
	}
	max := 0
	for _, v := range buf {
		if max < v {
			max = v
		}
	}
	ans := combination(max, 2)
	fmt.Println(ans)
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
	return permutation(n, n-1)
}

func combination(n int, k int) int {
	return permutation(n, k) / factorial(k)
}
