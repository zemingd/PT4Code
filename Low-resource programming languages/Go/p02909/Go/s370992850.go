package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	txt := scanner.Text()

	if txt == "Sunny" {
		fmt.Println("Cloudy")
	} else if txt == "Cloudy" {
		fmt.Println("Rainny")
	} else {
		fmt.Println("Sunny")
	}
}