package main

import "fmt"

func main() {
	var H,N,A int
	fmt.Scan(&H,&N)

	sum := 0
	for i:= 0; i < N; i++ {
		fmt.Scan(&A)
		sum += A
	}

	if sum >= H {
		fmt.Println("YES")
	}else{
		fmt.Println("NO")
	}

}