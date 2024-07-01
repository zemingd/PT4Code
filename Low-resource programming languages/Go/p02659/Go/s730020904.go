package main

import "fmt"
// import "math"

func main(){
	var A, B float64;
	fmt.Scan(&A, &B);

	ans := A * B;
	fmt.Println(int64(ans));
}