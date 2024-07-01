package main

import (
	"fmt"
)

func main() {

	var N int

	fmt.Scan(&N)

	B := SliceInt(N - 1)

	for i := 0; i < N-1; i++ {

		fmt.Scan(&B[i])

	}

	result :=0

	result += B[0]+B[N-2]

	for i:=1;i<=N-2;i++{

		result += min(B[i-1],B[i])
	}

	fmt.Println(result)

}

// return min
func min(a,b int) int{

	if a>b{

		return b
	}

		return a	
 
}

//SliceInt 引数サイズのSliceを返す
func SliceInt(a int) []int {

	IntSample := make([]int, a)

	return IntSample

}