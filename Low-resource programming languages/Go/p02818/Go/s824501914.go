package main

import "fmt"

func main(){
	var A, B, K int64;

	fmt.Scan(&A, &B, &K);

	for i := 0 ; int64(i) < K ; i++ {
		if A >= 1{
			A--;
		}else if B >= 1 {
			B--;
		}
	}
	fmt.Println(A, B);
}