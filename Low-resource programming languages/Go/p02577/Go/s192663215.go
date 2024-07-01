package main

import "fmt"
import "strconv"

func main() {
	var A string
	fmt.Scan(&A)

	var sum int = 0
	var num int

	for i := 0; i < len(A); i++{
		num, _= strconv.Atoi(A[i:i+1])
		sum += num
	}

	if (sum % 9) == 0{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}