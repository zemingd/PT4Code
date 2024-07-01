package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N)
	fmt.Scan(&S)
	ans := 0
	for n := 0; n < N-2; n++ {
		if S[n] == 65 && S[n+1] == 66 && S[n+2] == 67 {
			ans ++
		}
	}
	fmt.Println(ans)
}
