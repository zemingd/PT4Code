package main

import "fmt"

func main() {

	var N int
	fmt.Scan(&N)
	var S string
	fmt.Scan(&S)

	var ans string
	for i :=0; i < N; {
		if i < N-1 && S[i] == S[i+1]{
			i++
		}else {
			ans = ans + string(S[i])
			i++
		}
	}
	fmt.Println(len(ans))

}
