package main

import (
	"fmt"
	"os"
)

func main(){
	var a, b int
	fmt.Fscanf(os.Stdin, "%d %d", &a, &b)
	total := 1
	i := 0
	for {
		i += 1
		total = total -1 + a
		if total >= b {
			break
		}
	}
	fmt.Println(i)
}
