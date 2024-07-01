package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	ans := com(s, t)
	fmt.Println(ans)
}

func com(s, t string) ans int {
	ans := 0
	for i:=0;i<3;i++ {
		if s[i] == t[i] {
			ans++
		}
	}
}
