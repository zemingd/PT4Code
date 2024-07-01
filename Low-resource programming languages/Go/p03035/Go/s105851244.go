package main

import "fmt"

func main() {
	var takahashi, normalPrice int
	fmt.Scan(&takahashi, &normalPrice)

	if takahashi >= 13 {
		fmt.Println(normalPrice)
	} else if takahashi >= 6 {
		fmt.Println(normalPrice / 2)
	} else {
		fmt.Println(0)
	}
}
