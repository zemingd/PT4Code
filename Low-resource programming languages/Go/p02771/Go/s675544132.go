package main

import "fmt"

func main(){
	var A, B, C int
	fmt.Scan(&A, &B, &C);

	if A == B && A != C || A == C && A != B || B == C && A != B || B == C && A != C {
		fmt.Println("Yes");
	}else {
		fmt.Println("No");
	}

	
}