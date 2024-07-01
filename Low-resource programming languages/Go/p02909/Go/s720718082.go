package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() string {
	sc.Scan()
	return sc.Text()
}
func main() {
	weather := map[string]string{
		"Sunny":  "Cloudy",
		"Cloudy": "Rainy",
		"Rainy":  "Sunny",
	}

	s := nextInt()

	fmt.Println(weather[s])
}
