package main

import "fmt"

func main(){
	var K, S int
	fmt.Scan(&K)
	fmt.Scan(&S)

	acc := 0

	for x:=0; x<=2500; x++{
		if K < x{
			break
		}
		for y:=0; y<=2500; y++{
			if K < y{
				break
			}

			z := S - (x + y)

			if 0 <= z && z <= K{
				acc++
			}
		}
	}

	fmt.Println(acc)
}
