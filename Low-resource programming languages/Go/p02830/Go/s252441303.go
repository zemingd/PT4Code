package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	S := ""
	var s, t string
	fmt.Scanf("%s %s", &s, &t)
	for i := 0; i < N; i++ {
		S += string(s[i]) + string(t[i])
	}
	fmt.Println(S)
}
