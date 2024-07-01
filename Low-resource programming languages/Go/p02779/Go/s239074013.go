package main

import (
	"fmt"
  	"sort"
)

func main() {

	DistinctOrNot()

}

//DistinctOrNot te
func DistinctOrNot(){

	var N int

	fmt.Scan(&N)

	A := make([]int,N)
	
	for i:=0;i<N;i++{

		fmt.Scan(&A[i])
	}

	sort.Sort(sort.IntSlice(A))

	Flg := false

	for i:=0;i<len(A)-1;i++{

		if A[i]==A[i+1] {

			Flg=true
		}
	}


	if Flg == true{

		fmt.Println("NO")

	}else{

		fmt.Println("YES")
	}

}