package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}
	counter := make(map[int]int)
	for _, a := range as {
		counter[a]++
	}
	cnt := 0
	for _, c := range counter {
		if c%2 == 1 {
			cnt++
		}
	}
	fmt.Println(cnt)
}
