package main

import (
	"fmt"
)

func main() {

	var N,K int
	fmt.Scan(&N,&K)


	d := SliceInt(K)

	res := make(map[int]int)

	for i:=0;i<K;i++{

		fmt.Scan(&d[i])

		A:=SliceInt(d[i])
	
		for j:=0;j<d[i];j++{

			fmt.Scan(&A[j])
		}

		for i:=0;i<len(A);i++{

			val,ok := res[A[i]]

			if ok==true{

				res[A[i]] = val+1

			}else{

				res[A[i]] = 1
			}

		}
	}


	fmt.Println(N-len(res))

}
