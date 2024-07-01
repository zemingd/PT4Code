package main

import (
	"fmt"
	"log"
)

func main() {
	var n int
	if _, err := fmt.Scan(&n); err != nil {
		log.Fatal(err)
	}

	var args []int
	for i := 0; i < n; i++ {
		var x int
		if _, err := fmt.Scan(&x); err != nil {
			log.Fatal(err)
		}
		args = append(args, x)
	}

	var execCnt int
	MainLoop:
	for {
		for _, val := range args {
			if val % 2 == 1 {
				break MainLoop
			}
		}

		for i := 0; i < n; i++ {
			args[i] = args[i] / 2
		}
		execCnt++
	}

	fmt.Println(execCnt)
}
