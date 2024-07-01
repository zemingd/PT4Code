package main

import (
	"fmt"
)

func main() {

	var N int

	var S string

	fmt.Scan(&N,&S)

	var result string

	if N ==1 {

		fmt.Println(1)	
		return
	}

	for i:=0;i<N;i++{

		if i!=N-1{
			
			if S[i:i+1] != S[i+1:i+2]{

				result += S[i:i+1]
			}

		}else{

			if S[i-1:i] != S[i:i+1]{

				result += S[i:i+1]
			}
		}
	}
	
	fmt.Println(len(result))
}