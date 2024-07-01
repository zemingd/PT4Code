package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s\n", &s)
	ans := make([]int, len(s))

	for i, l := range s {
		total := 0
		if string(l) == "R" {
			for i2 := i + 1; i2 < len(s); i2++ {
				total++
				if string(s[i2]) == "L" {
					if total%2 == 0 {
						ans[i2]++
					} else {
						ans[i2-1]++
					}
					break
				}

			}
		} else {
			for i2 := i - 1; i2 >= 0; i2-- {
				total++
				if string(s[i2]) == "R" {
					if total%2 == 0 {
						ans[i2]++
					} else {
						ans[i2+1]++
					}
					break
				}

			}

		}

	}

	for _, i := range ans {
		fmt.Printf("%d ", i)
	}
}
