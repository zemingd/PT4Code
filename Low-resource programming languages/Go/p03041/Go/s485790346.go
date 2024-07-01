package main

import "fmt"

func main() {
	var (
		n, k int
		s    string
	)
	fmt.Scan(&n, &k, &s)

	for i := 0; i < n; i++ {
		if i == k-1 {
			switch s[i] {
			case 'A':
				fmt.Printf("%s", "a")
			case 'B':
				fmt.Printf("%s", "b")
			case 'C':
				fmt.Printf("%s", "c")
			}
		} else {
			fmt.Printf("%s", string(s[i]))
		}
	}
}
