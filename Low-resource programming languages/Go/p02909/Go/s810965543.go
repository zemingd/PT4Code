package main

import (
	"fmt"
)

var weathers []string = []string{"Sunny", "Cloudy", "Rainy"}

func main() {
	var in string
	fmt.Scanf("%s", &in)

	for i := 0; i < len(weathers); i++ {
		if weathers[i] == in {
			fmt.Printf("%s\n", weathers[(i+1)%len(weathers)])
		}
	}
}
