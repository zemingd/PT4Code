package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	fmt.Println(Calc(s))
}

func Calc(s string) int {
	var sum int
	n := len(s)
	for i := 0; i <= n-3; i++ {
		for j := i + 1; j <= n-2; j++ {
			if s[i] == s[j] {
				continue
			}
			for k := j + 1; k <= n-1; k++ {
				if s[i] != s[j] && s[i] != s[k] && s[j] != s[k] && j-i != k-j {
					sum++
				}
			}
		}
	}
	return sum
}
