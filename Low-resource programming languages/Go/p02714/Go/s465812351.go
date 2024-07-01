package main

import "fmt"

func main() {
	var n int
	var str string
	fmt.Scan(&n)
	fmt.Scan(&str)

	s := []byte(str)

	count := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			if s[j] == s[i] {
				continue
			}

			for k := j + 1; k < n; k++ {
				if s[k] == s[j] || s[k] == s[i] {
					continue
				}

				if j-i != k-j {
					count++
				}
			}

		}
	}

	fmt.Println(count)
}