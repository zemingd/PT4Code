package main

import "fmt"

func main(){
	var N int

	fmt.Scan(&N)
	
	// var a = make([]int64, N)
	var ans int

	for i := 0 ; i < N ; i++ {
		if i % 15 == 0{

		}else if i % 3 == 0 {

		}else if i % 5 == 0{

		}else {
			ans += i
		}
	}
	fmt.Println(ans)
}