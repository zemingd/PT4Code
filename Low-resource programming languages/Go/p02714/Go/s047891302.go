package main

import "fmt"

func main() {
	var n int

	fmt.Scan(&n)

	var s string

	fmt.Scan(&s)

	var cnt int
	for k := 0; k < n; k++ {
		for j := 0; j < k; j++ {
			for i := 0; i < j; i++ {
				if j-i == k-j {
					continue
				}
				if s[i] == s[j] {
					continue
				}
				if s[j] == s[k] {
					continue
				} 
				if s[k] == s[i] {
					continue
				}
				cnt++
			}
		}
	}
	fmt.Print(cnt)
}
