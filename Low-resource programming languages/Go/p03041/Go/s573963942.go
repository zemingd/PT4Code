package main

import "fmt"

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)

	fmt.Println(s[:k-1] + string(s[k-1]+'a'-'A') + s[k:])
}
