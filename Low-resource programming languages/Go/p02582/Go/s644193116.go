package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	var ans int
	var aans int
	for _, v := range n {
		if v == 'R' {
			ans += 1
			if aans < ans {
				aans = ans
			}
		} else {
			ans = 0
		}
	}
	fmt.Println(aans)
}
