package main

import "fmt"

func main() {
	var forecast, actual string
	fmt.Scanf("%s", &forecast)
	fmt.Scanf("%s", &actual)

	var ans int
	for i := 0; i < 3; i ++ {
		if []rune(forecast)[i] == []rune(actual)[i] {
			ans++
		}
	}
	fmt.Println(ans)
}