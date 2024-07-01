package main

import "fmt"
import "sort"

func main() {
	var N int
	fmt.Scanf("%d", &N)

	dupes := map[string]int{}
	for i := 0; i < N; i++ {
		var s string
		fmt.Scanf("%s", &s)

		ns := make([]int, len(s))
		for i, b := range s[:] {
			ns[i] = int(b)
		}
		sort.Sort(sort.IntSlice(ns))

		bs := make([]byte, len(s))
		for i, r := range ns {
			bs[i] = byte(r)
		}

		e := string(bs)
		dupes[e] = dupes[e] + 1
	}

	var ans int64
	for _, c := range dupes {
		ans += int64(c) * int64(c-1)
	}
	fmt.Println(ans / 2)
}
