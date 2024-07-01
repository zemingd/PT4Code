package main

import "fmt"

func main(){
	var A, B, K int64;

	fmt.Scan(&A, &B, &K);

	if A >=1{
		if A - K <= 0 {
			B += A-K
			A = 0;
		}
	}else if B >= 1 {
		if B - K <= 0{
			B = 0
		}else {
			B -= K
		}
	}
	if B < 0 {B=0}
	fmt.Println(A, B);
}