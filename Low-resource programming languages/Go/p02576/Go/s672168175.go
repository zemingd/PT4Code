package main

import "fmt"

func main(){
	var N, X, T int
	fmt.Scan(&N, &X, &T)

	var min = (N / X)

	var jud = float64(N % X)
	if jud > 0{
		min++
	}

	var res = min * T

	fmt.Println(res)
}