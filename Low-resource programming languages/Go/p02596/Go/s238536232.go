package main

import "fmt"
 
func main() {
	var x int
	y := []int{7, 77, 777, 7777, 77777, 777777}
	
	fmt.Scan(&x)
	var result int
	for i, v := range y {
		if (v%x) == 0 {
			result = i+1
			break
		} else {
			result = -1
		}
	}
	fmt.Println(result)
}