package main

import (
	"fmt"
)

func main() {
	var N int

	fmt.Scanf("%d\n", &N)
	arr := []uint64{1, 2, 3, 4, 5, 6, 7, 8, 9}
	var a uint64
	for i := 0; i < N; i++ {
		a = arr[0]
		arr = arr[1:]
		if a%10 != 0 {
			arr = append(arr, a*10+a%10-1)
		}
		arr = append(arr, 10*a+a%10)
		if a%10 != 9 {
			arr = append(arr, 10*a+a%10+1)
		}
	}
	fmt.Println(a)
}
