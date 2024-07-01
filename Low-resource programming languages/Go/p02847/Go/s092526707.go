package main

import (
	"fmt"
)

func main() {
	var aa string
	fmt.Scanf("%s", &aa)
	// SUN,MON,TUE,WED,THU,FRI,SAT
	mm := map[string]int{"SUN": 7, "MON": 6, "TUE": 5, "WED": 4, "THU": 3, "FRI": 2, "SAT": 1}

	fmt.Printf("%d\n", mm[aa])
}
