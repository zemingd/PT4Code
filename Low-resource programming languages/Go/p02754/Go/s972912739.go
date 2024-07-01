package main

import (
	"fmt"
)

func main() {

	var N,A,B int

	fmt.Scan(&N,&A,&B)

	acount :=0
	bcount :=0

	flg := false

	for x:=0;x<10000;x++{

		for i:=0;i<A;i++{

			if N >=1{

				N= N-1
				acount++
		
			}else{

				flg=true
				break
			}
			
		}

		if flg==true{
			break
		}

		for j:=0;j<B;j++{

			if N >=1 {

				N = N-1
				bcount++
			
			}else{

				flg =true
				break
			}

		}

		if flg==true{
			break
		}

	}

	fmt.Println(acount)


}