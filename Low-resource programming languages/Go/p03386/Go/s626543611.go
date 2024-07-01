package main

import "fmt"

func main(){
	var N int
	var S string 
	var x, max int

	fmt.Scan(&N, &S)

	for i := 0 ; i < len(S) ; i++ {
		if S[i] == 'I' {
			x++
		}else {
			x--
		}
		if max < x{
			max = x
		}
		// fmt.Println(x)
	}
	fmt.Println(max)
}