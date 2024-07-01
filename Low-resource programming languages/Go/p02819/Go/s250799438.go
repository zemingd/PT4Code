package main

import (
	"fmt"
)

func main() {

	var X int

	fmt.Scan(&X)

	okFlg := false

	for {

		okFlg = false

		for i:=2;i<X-1;i++{

			if X %i ==0{

				okFlg = true
			
				break
			}

		}

		if okFlg == false{

			break
		
		}else{

			X++
		}

	}

	fmt.Println(X)


}
