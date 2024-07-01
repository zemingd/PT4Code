package main

import "fmt"

func main() {
	var N int

	fmt.Scan(&N)
	var match bool
	for indexA := 1; indexA < 10; indexA++ {			
		for indexB := 1; indexB < 10; indexB++ {
			var multi = indexA*indexB			
			if( multi == N ){
				match = true
			}
		}
	}	
	if match {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}