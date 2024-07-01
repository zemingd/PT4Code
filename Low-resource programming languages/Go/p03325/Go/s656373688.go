package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}
	cnt := 0
	for _, a := range as {
		for a%2 == 0 {
			cnt++
			a /= 2
		}
	}
	fmt.Println(cnt)
}
