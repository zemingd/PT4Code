package main

import "fmt"

func main() {
	var H,N int
	fmt.Scan(&H,&N)

	sum := 0
	for i:= 0; i < N; i++ {
		var A int
		fmt.Scan(&A)
		sum += A
	}

	if sum >= H {
		fmt.Println("YES")
	}else{
		fmt.Println("NO")
	}

}