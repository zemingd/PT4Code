package main

import (
	"fmt"
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

	Flg := false

	for i:=0;i<len(A);i++{

		for j:=0;j<len(A);j++{

			if i!=j && A[i]==A[j]{

				Flg = true
				break
			}

		}

	}

	if Flg == true{

		fmt.Println("NO")

	}else{

		fmt.Println("YES")
	}

}