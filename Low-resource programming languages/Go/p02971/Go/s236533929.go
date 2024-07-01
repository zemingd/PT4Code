package main

import (
	"fmt"
)

type ll int64


func main() {

	var N int
	fmt.Scan(&N)

	slice := make([]int,N)

	max_first := 0
	max_second := 0

	var buffer int = 0

	for i:=0;i< N ;i++  {
		fmt.Scan(&buffer)
		slice[i] = buffer
		if buffer >= max_first {
			max_second = max_first
			max_first = buffer
		} else if buffer >= max_second {
			max_second = buffer
		}

	}

	for i:=0;i<N;i++  {
		if slice[i] == max_first {
			fmt.Println(max_second)
		}else {
			fmt.Println(max_first)
		}
	}


}
