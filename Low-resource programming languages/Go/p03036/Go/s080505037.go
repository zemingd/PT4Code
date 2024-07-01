package main

import "fmt"

func main() {
	var r, d, x2000 int
	fmt.Scan(&r, &d, &x2000)

	s := make([]int, 11)
	for i := range s {
		if i == 0 {
			s[i] = x2000
			continue
		}
		s[i] = r*s[i-1] - d
		fmt.Println(s[i])
	}
}
