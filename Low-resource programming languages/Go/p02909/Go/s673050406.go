package main

import (
	"bufio"
	"fmt"
	"os"
)

const (
	Sunny =  "Sunny"
)
func main() {
	Weather := []string{"Sunny","Cloudy","Rainy"}

	var sc = bufio.NewScanner(os.Stdin)
	sc.Scan()
	inp := sc.Text()

	for i,v := range Weather {
		if inp == v && i != 2{
			fmt.Println(Weather[i+1])
		} else if inp == v && i == 2{
			fmt.Println(Sunny)
		}

	}
}
