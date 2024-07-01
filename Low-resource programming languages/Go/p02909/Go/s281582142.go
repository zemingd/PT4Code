package main

import "fmt"

func main() {
	var weather string
	fmt.Scanf("%s", &weather)
	if(weather == "Sunny") {
		fmt.Println("cloudy")
	} else if (weather == "cloudy") {
		fmt.Println("Rainy")
	} else {
		fmt.Println("Sunny")
	}
}