package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N)
	fmt.Scan(&S)
	cnt := 1
	t := S[:1]
	for i := 1; i < len(S); i++ {
		if S[i:i+1] != t {
			t = S[i : i+1]
			cnt++
		}
	}
	fmt.Println(cnt)
}
