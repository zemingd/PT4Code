package main

import "fmt"

func main() {
	m := make(map[string]int)
	res := [4]string{"AC", "WA", "TLE", "RE"}
	n, s := 0, ""
	fmt.Scanf("%d", &n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%s", &s)
		m[s]++
	}
	for _, i := range res {
		fmt.Printf("%s x %d\n", i, m[i])
	}
}
