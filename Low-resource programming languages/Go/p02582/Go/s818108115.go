package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	max := 0
	cnt := 0
	for _, r := range n {
		if string(r) == "R" {
			cnt++
		} else {
			cnt = 0
		}
		if cnt >= max {
			max = cnt
		}
	}
	fmt.Println(max)
}