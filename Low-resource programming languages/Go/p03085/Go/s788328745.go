package main

import (
	"fmt"
)

func main() {
	var b, ans string
	fmt.Scanln(&b)
	switch b {
	case "A":
		ans = "T"
	case "T":
		ans = "A"
	case "C":
		ans = "G"
	case "G":
		ans = "C"
	}
	fmt.Println(ans)
}
