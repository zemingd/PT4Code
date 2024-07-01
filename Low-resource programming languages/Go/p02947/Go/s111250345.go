package main

import (
	"fmt"
	"io"
	"os"
	"sort"
)

func per(a, b int) int {
	if a == 0 {
		return 0
	}
	if b == 1 {
		return a
	}
	return a * per(a-1, b-1)
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
	//fmt.Printf("%#v", arr)
	res := 0
	cnt := 0
	s = arr[0]
	for i := 1; i < n; i++ {
		if arr[i] == s {
			cnt++
		} else {
			res += per(cnt, 2) / 2
			s = arr[i]
		}
	}
	res += per(cnt, 2) / 2
	fmt.Fprintf(w, "%d ", res)
}

func main() {
	proc(os.Stdin, os.Stdout)
}
