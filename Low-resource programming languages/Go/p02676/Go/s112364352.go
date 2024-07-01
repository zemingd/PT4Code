package main

import "fmt"

func main() {
	var k int
	var s string
	fmt.Scan(&k)
	fmt.Scan(&s)

	if len([]byte(s)) <= k {
		fmt.Println(s)
		return
	}

	ans := ""
	for i := 0; i < k; i++ {
		ans += string(s[i])
	}
	fmt.Println(ans + "...")
}