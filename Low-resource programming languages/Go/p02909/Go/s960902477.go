package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	text := stdin.Text()

	switch {
	case text == "Sunny":
		fmt.Println("Cloudy")
	case text == "Cloudy":
		fmt.Println("Rainy")
	case text == "Rainy":
		fmt.Println("Sunny")
	}
}
