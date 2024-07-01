package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	day := scanner.Text()
	fmt.Println(7 - dayToInt(day))
}

func dayToInt(day string) int {
	switch day {
	case "SUN":
		return 0
	case "MON":
		return 1
	case "TUE":
		return 2
	case "WED":
		return 3
	case "THU":
		return 4
	case "FRI":
		return 5
	case "SAT":
		return 6
	default:
		panic("unknown day")
	}
}
