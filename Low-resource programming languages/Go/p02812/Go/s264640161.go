package main

import (
	"fmt"
)

func main() {

	var N int
	var S string

	fmt.Scan(&N)
	fmt.Scan(&S)

	cnt :=0

	for i:=0 ; i< N-2;i++{

		if S[i:i+1]=="A"{

			if  S[i+1:i+2]=="B"{

				if S[i+2:i+3]=="C" {

					cnt++					
				}
			}
		}
	}

	fmt.Println(cnt)


}