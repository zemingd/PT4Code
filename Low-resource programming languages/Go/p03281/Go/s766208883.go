package main

import (
	"fmt"
)

func main() {


	var N int

	fmt.Scan(&N)


	cnt:=0
	sum:=0

	for i:=1;i<=N;i++{

		cnt=0

		if i%2!=0{

			for j:=1;j<=i;j++{

				if i%j==0{

					cnt++

				}

			}
		}

		if cnt ==8{

			sum++

		}


	}

	fmt.Println(sum)
}