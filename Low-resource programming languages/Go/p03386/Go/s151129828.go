package main

import "fmt"

func main(){
	var A, B, K int
	var C[100000] float64
	
	fmt.Scan(&A, &B, &K);
	j := 0
	for i := A ; i <= B ; i++{
		if j < K { 
			C[i]++
			j++
		}
	}
	// fmt.Println(j)
	for i := B ; i >= A ; i-- {
		if j > 0{
			C[i]++
			j--
		}
	}
	// fmt.Println(j)
	for i := A ; i <= B ; i++ {
		if C[i] > 0 {
			fmt.Println(i)
		}
	}

	//fmt.Println(C)
}