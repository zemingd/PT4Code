package main

import "fmt"

func main() {
	var s string
	var s1 string
	fmt.Scanf("%s\n%s", &s, &s1)
	res := 0
	for i := 0; i<3;i++ {
		if s[i] == s1[i] {
			res++
		}
	}
	fmt.Println(res)
}
