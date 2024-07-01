package main

import (
	"fmt"
	"os"
)

var weathers []string = []string{"Sunny", "Cloudy", "Rainy"}

func main() {
	in := os.Args[1]
	for i := 0; i < len(weathers); i++ {
		if weathers[i] == in {
			fmt.Printf("%s\n", weathers[(i+1)%len(weathers)])
		}
	}
}
