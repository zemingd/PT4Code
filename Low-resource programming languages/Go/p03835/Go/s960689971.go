package main

import "fmt"

func main() {
	var k, s, ans int
	fmt.Scan(&k, &s)
	for i := 0; i <= k; i++ {
		for j := 0; j <= k; j++ {
			if 0 <= s-(i+j) && s-(i+j) <= k {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
