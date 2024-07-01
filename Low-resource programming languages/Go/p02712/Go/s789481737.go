package main

import "fmt"

func main()  {
	var N uint64
	fmt.Scan(&N)

	var sum uint64
	sum = 0

	var i uint64

	for i = 1; i <= N; i++{
		if i % 3 !=0 && i % 5 != 0 {
			sum += i
		}
	}

	fmt.Println(sum)
}
