package main

import (
	"fmt"
)

func main(){
	var n int
	fmt.Scan(&n)

	for index:= 1;  index <= n; index++ {
		cnt := 0
LB1:
		for i := 1; i <= 105;i++ {
			for j := 1; j <= 105; j++ {
				for k := 1; k<= 105; k++ {
					shiki := i*i +j*j+k*k +i*j+j*k+k*i
					if index == shiki{
						if i == j && j== k {
							cnt++
							break LB1
						}
						if i == j || j ==k || k== i {
							cnt+=3
							break LB1
						}
						cnt++
						// break LB1
					}
				}
			}
		}
		fmt.Println(cnt)
	}
}



