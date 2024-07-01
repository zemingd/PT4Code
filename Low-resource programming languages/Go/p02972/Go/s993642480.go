package main

import "fmt"

func main()  {
	var N int
	fmt.Scan(&N)
	a := make([]int, N)
	b := make([]int, N)

	for i := range a {
		fmt.Scan(&a[i])
	}

	var sum int
	var f int
	for i:=N; i>0; i-- {
		sum = 0
		for j:=1; j*i<=N; j++ {
			sum += b[j*i - 1]
		}
		if sum%2 != a[i-1] {
			b[i-1]++
			f++
		}
	}
	if f > 0 {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
	for i := range b {
		if b[i] == 1 {
			fmt.Printf("%d ", i+1)
		}
	}
}