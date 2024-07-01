package main

import "fmt"

func main() {
	var n, cnt int
	var s string
	fmt.Scan(&n)
	fmt.Scan(&s)
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			for k := j + 1; k < n; k++ {
				if s[i] == s[j] || s[i] == s[k] || s[j] == s[k] || j-i == k-j {
					continue
				}
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
