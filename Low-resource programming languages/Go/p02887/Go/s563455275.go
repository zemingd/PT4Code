package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	var s string
	fmt.Scan(&s)
	ans := 0
	cnt := "A"
	for i :=0; i<a; i++ {
		if cnt != string(s[i]) {
			ans++
			cnt = string(s[i])
		}
	}
	fmt.Println(ans)
}