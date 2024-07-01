package main

import "fmt"

func main () {
	var K int
	var s string
	fmt.Scanf("%s", &s)

	fmt.Scanf("%d", &K)

	var res int64 = 0
	S := len(s)
	for i := 0; i < S-1; i ++ {
		if s[i] == s[i+1] {
			res += int64(1)
			i ++
		}
	}
	res *= int64(K)


	fmt.Printf("%d", res)
}