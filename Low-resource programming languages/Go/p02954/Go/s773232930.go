package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ar := make([]int, len(s))
	br := make([]int, len(s))
	bkc := 0
	for i := 0; i < len(s); i++ {
		t := i
		c := 0
		if bkc > 3 && i >= 2 {
			if s[i] == s[i-1] && s[i-1] == s[i-2] {
				bkc--
				ar[br[i-2]]++
				continue
			}
		}
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
					br[i] = t
					bkc = c
					break
				} else {
					if s[t] == 'L' {
						ar[t-1]++
						br[i] = t - 1
						bkc = c
						break
					}
					ar[t+1]++
					br[i] = t + 1
					bkc = c
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
