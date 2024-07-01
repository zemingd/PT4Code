package main

import "fmt"

func main(){
	var K, A, B int

	fmt.Scan(&K, &A, &B);
	f := 0;
	for i := 1 ; i < 1000 ; i++{
		if A <= i*K && i*K <= B {
			f = 1;
		}
	}

	if f == 1 {
		fmt.Println("OK");
	}else {
		fmt.Println("NG");
	}
	
}