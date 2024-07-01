package main

import "fmt"

func main(){
  var D, N int
  fmt.Scan(&D, &N)
	ans := 1
	for i := 0; i < D; i++ {
		ans *= 100
	}
  
  	if N == 100 {
		fmt.Println(ans*N + ans)
	} else {
		fmt.Println(ans * N)
	}
}