package main

import "fmt"

func main() {
	var n int
	var x int
	var count int
	var l, bound []int
	var tmp int

	_, err := fmt.Scan(&n, &x)
	if err != nil {
		fmt.Println("fmt Scan error:", err)
		return
	}
	for i := 0; i < n; i++ {
		_, err := fmt.Scan(&tmp)
		if err != nil {
			fmt.Println("fmt Scan error:", err)
			return
		}
		l = append(l, (tmp))
	}

	if n == 1 {
		fmt.Println(1)
		return
	}

	for i := 0; i < n; i++ {
		if i == 0 {
			bound = append(bound, 0)
		} else {
			bound = append(bound, bound[i-1]+l[i-1])
		}
	}

	for i := 0; i < len(bound); i++ {
		if bound[i] <= x {
			count++
		}
	}

	fmt.Println(count)
}
