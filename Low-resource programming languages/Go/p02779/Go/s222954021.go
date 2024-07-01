package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	cnt := make(map[int]int)

	for _, num := range a {
		if cnt[num] == 1 {
			fmt.Println("NO")
			return
		} else {
			cnt[num] = 1
		}
	}
	fmt.Println("YES")
}
