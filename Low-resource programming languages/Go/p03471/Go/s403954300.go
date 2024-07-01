package main

import "fmt"

const MAX_NUM  = 2000

func main(){
	var N, Y int
	fmt.Scan(&N)
	fmt.Scan(&Y)

	for ten:= 0; 10000 * ten <= Y; ten++{
		for five :=0; 10000 * ten + 5000 * five <= Y; five++{

			one := N - (ten + five)

			if ten < 0{
				break
			}

			if 10000 * ten + 5000 * five + 1000 * one == Y{
				fmt.Println(ten, five, one)
				return
			}
		}
	}

	fmt.Println(-1, -1, -1)
}
