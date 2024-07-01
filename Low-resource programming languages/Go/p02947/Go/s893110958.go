package main

import (
	"fmt"
	"io"
	"os"
	"sort"
)

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

func proc(r io.Reader, w io.Writer) {
	var n int
	var s string
	fmt.Fscanf(r, "%d", &n)
	arr := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Fscanf(r, "%s", &s)
		runes := []rune(s)
		ints := make([]int, 10)
		for j := 0; j < 10; j++ {
			ints[j] = int(runes[j] - 'a')
		}
		sort.Ints(ints)
		for j := 0; j < 10; j++ {
			runes[j] = rune('a' + ints[j])
		}
		arr[i] = string(runes)
	}
	sort.Strings(arr)
	res := 0
	cnt := 0
	s = arr[0]
	for i := 1; i < n; i++ {
		if arr[i] == s {
			cnt++
		} else {
			res += permutation(cnt+1, 2) / 2
			cnt = 0
			s = arr[i]
		}
	}
	res += permutation(cnt+1, 2) / 2
	fmt.Fprintf(w, "%d ", res)
}

func main() {
	proc(os.Stdin, os.Stdout)
}
