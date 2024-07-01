package main

import "fmt"
import "math"

func main(){
	var N, T, A int
	var ans int
	fmt.Scan(&N, &T, &A)

	H := make([]int, N)
	for i:=0;i<N;i++{
		fmt.Scan(&H[i])
	}

	tmp := 100000.

	for i:= 0 ; i < N ; i++{
		a := float64(T) - float64(H[i]) * 0.006
		b := math.Abs(float64(A)-a)
		if  b < tmp{
			ans = i+1
			tmp = b
		}
//		fmt.Println(a, b)
	}
	fmt.Println(ans)
}