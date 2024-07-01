package main

import (
	"fmt"
)

const (
	 	Cake	= 4
		Donut	= 7
)

func main() {
	var N int
	
	fmt.Scan(&N)

	for value := N;!(MultiplesOf(Cake,value) || MultiplesOf(Donut,value));value -= Donut {
		if value < Donut {
			fmt.Println("NO")
		}
	}
	fmt.Println("YES")

}

func MultiplesOf(multiple,number int) bool{
	if iToB(number % multiple) { 
		return false
	}
	return true
}

func iToB(num int) bool {
	if num != 0 {
		return true
	} else {
		return false
	}
}
