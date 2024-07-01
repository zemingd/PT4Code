package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	ks := make([]int, n)
	ass := make([][]int, n)
	for i := range ks {
		var k int
		fmt.Scan(&k)
		ass[i] = make([]int, k)
		for j := range ass[i] {
			fmt.Scan(&ass[i][j])
		}
	}

	counter := make(map[int]int)
	for _, as := range ass {
		for _, a := range as {
			counter[a]++
		}
	}

	cnt := 0
	for _, num := range counter {
		if num == n {
			cnt++
		}
	}

	fmt.Println(cnt)
}
