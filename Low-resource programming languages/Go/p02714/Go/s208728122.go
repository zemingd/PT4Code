package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)

	sum := 0
	for i := 1; i <= n-2; i++ {
		for j := i+1; j <= n-1; j++ {
			for k := j+1; k <= n; k++ {
				if s[i-1] == s[j-1] || s[i-1] == s[k-1] || s[j-1] == s[k-1]{
					continue
				}
				if j-i == k-j {
					continue
				}
				sum += 1
			}
		}
	}

	fmt.Println(sum)
}