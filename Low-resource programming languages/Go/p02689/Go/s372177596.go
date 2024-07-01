package main

import (
	"fmt"
)
func main(){
	var N,M int
	fmt.Scan(&N,&M)
	H := make([]int,N)
	A := make([]int,M)
	B := make([]int,M)
	for i:=0;i<N;i++{
		fmt.Scan(&H[i])
	}
	for i:=0;i<M;i++{
		fmt.Scan(&A[i],&B[i])
	}
	t := make([]int,N)
	for i:=0;i<N;i++{
		t[i] = 1
	}

	for i:=0;i<M;i++{
		if H[A[i]-1]>H[B[i]-1]{
			t[B[i]-1] = 0
		}else if H[A[i]-1]<H[B[i]-1]{
			t[A[i]-1] = 0
		}else{
			t[A[i]-1] = 0
			t[B[i]-1] = 0
		}
	}
	 ans := 0
	for i:=0;i<N;i++{
		ans +=t[i] 
	}

	fmt.Println(ans)

}