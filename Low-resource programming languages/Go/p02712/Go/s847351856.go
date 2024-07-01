package main

import "fmt"

func main()  {
	var N int64
	fmt.Scan(&N)

	var sum int64
	sum = 0

	var i int64

	for i = 0; i < N; i++{
		if i % 3 !=0 && i % 5 != 0 {
			sum += i
		}
	}

	fmt.Println(sum)
}
