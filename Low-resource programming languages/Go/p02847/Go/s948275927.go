package main

import (
	"fmt"
	"os"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	days := []string{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
	for i, d := range days {
		if s == d {
			fmt.Printf("%d\n", 7-i)
			os.Exit(0)
		}
	}
}
