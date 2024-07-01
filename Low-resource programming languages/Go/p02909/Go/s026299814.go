package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	nextWeather := make(map[string]string)
	nextWeather["Sunny"] = "Cloudy"
	nextWeather["Cloudy"] = "Rainy"
	nextWeather["Rainy"] = "Sunny"

	scanner.Scan()
	fmt.Println(nextWeather[scanner.Text()])

}
