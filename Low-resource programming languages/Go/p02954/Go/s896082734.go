package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ar := make([]int, len(s))
	for i := 0; i < len(s); i++ {
		t := i
		c := 0
		for {
			if s[t] == 'L' {
				t--
			} else {
				t++
			}
			c++
			if s[i] != s[t] {
				if c%2 == 0 {
					ar[t]++
					break
				} else {
					if s[t] == 'L' {
						ar[t-1]++
						break
					}
					ar[t+1]++
					break
				}
			}
		}
	}
	for i, v := range ar {
		if i == len(s)-1 {
			fmt.Println(v)
		} else {
			fmt.Printf("%d ", v)
		}
	}
}
