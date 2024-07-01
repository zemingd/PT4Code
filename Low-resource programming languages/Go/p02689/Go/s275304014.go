package main

import (
	"fmt"
)

func main() {

	var N,M int

	fmt.Scan(&N,&M)

	H := SliceInt(N)
	A:= SliceInt(M)
	B:= SliceInt(M)

	all := SliceInt(N)

	for i:=0;i<N;i++{

		fmt.Scan(&H[i])

		all[i] = 1

	}

	for i:=0;i<M;i++{

		fmt.Scan(&A[i],&B[i])
	}


	for i:=0;i<M;i++{

		a := A[i]
		b:=  B[i]

		if H[a-1] >= H[b-1]{
			all[b-1] = 0
		}

		if H[b-1] >= H[a-1]{
			all[a-1] =0
		}
	}
  
	cnt :=0

	for _,val := range all{

		if val ==1 {
			cnt++
		}
	}


	fmt.Println(cnt)
}

//SliceInt 引数サイズのSliceを返す
func SliceInt(a int) []int {

	IntSample := make([]int, a)

	return IntSample

}