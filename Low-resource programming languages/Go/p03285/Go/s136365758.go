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

	value := N

	for true {
		if value < 0 {
			fmt.Println("No")
			break
		}

		if MultiplesOf(Cake,value) || MultiplesOf(Donut,value) {
			fmt.Println("Yes")
			break
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
