package main

import "fmt"

func main()  {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	start := 0
	end := 0
	ans := 1
	for i:=1; i<n; i++ {
		if a[start] < a[i] {
			start = i
		} else if a[end] >= a[i] {
			ans++
			end = i
		}
	}
	fmt.Println(ans)
}