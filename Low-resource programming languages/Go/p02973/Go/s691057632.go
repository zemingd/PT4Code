package main

import "fmt"

func main()  {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	b := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
		b[i] = -1
	}
	ans := 0
	for i:=0; i<n; i++ {
		for j:=0; j<n; j++ {
			if b[j] < a[i] {
				b[j] = a[i]
				if j > ans {
					ans = j
				}
				break
			}
		}
	}
	fmt.Println(ans+1)
}