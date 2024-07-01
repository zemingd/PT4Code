package main

import (
	"fmt"
	"os"
)

const (
	 	Cake	= 4
		Donut	= 7
)

func main() {
	var N int
	
	fmt.Scan(&N)

	value := N
	for true {
		if MultiplesOf(Cake,value) || MultiplesOf(Donut,value) {
			fmt.Println("YES")
			os.Exit(0)
		}
		
		if value < 0 {
			fmt.Println("NO")
			os.Exit(1)
		}

		value -= Donut
	}

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
