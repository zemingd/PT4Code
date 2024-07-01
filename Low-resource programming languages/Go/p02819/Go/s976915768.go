package main

import (
	"fmt"

)

func main() {

	var X int

	fmt.Scan(&X)

	cnt :=X


	for{

		okflg:=false

		for i:=2;i<cnt;i++{

			if cnt%i==0{

				okflg=true
				break
				
			}

		}

		if okflg ==false{

			fmt.Println(cnt)
			return

		}

		cnt++

	}

}