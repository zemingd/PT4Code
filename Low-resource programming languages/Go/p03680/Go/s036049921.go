package main

import (
	"fmt"
)

func main() {


	var N int

	fmt.Scan(&N)

	a:= SliceInt(N)


	for i:=0;i<N;i++{

		fmt.Scan(&a[i])
	}

	temp :=0

	cnt :=0

	index :=0

	for{

		temp =  a[index] 
		cnt++

		if temp ==2{

			fmt.Println(cnt)
			return
		}

		index = temp-1
		
		if cnt >= N+1{

			fmt.Println(-1)
			return
		}
	}
}

//SliceInt 引数サイズのSliceを返す
func SliceInt(a int) []int {

	IntSample := make([]int, a)

	return IntSample

}