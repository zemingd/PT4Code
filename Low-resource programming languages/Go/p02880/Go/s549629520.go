package main

import "fmt"

func main() {

	var a int

	fmt.Scan(&a)

	if 1 > a {
		fmt.Println("No")
		return
	}
	for _, v := range kakeru(){
		if a == v {
			fmt.Println("Yes")
			return
		}		
	}

	fmt.Println("No")

}

func kakeru() []int {
	numList := make([]int, 81)	
	for i := 1; i < 10; i++{
		for j := 1; j < 10; j++ {
			numList = append(numList, i*j)	
		}
	}
	return numList
}
