package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	res := solv(N)

	fmt.Println(res)

}

func solv(len int) (broken int) {
	counter := 0
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		if num == counter+1 {
			counter += 1
		} else {
			broken += 1
		}
	}
	if broken == len {
		return -1
	}
	return
}

