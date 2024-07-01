package main

import "fmt"

func main() {
	var line string
	fmt.Scan(&line)

	y := 0
	for i := range make([]struct{}, 4) {
		y *= 10
		y += int(line[i] - '0')
	}

	m := 0
	for i := range make([]struct{}, 2) {
		m *= 10
		m += int(line[i+5] - '0')
	}

	ans := "Heisei"
	if y == 2019 && m > 4 || y > 2019 {
		ans = "TBD"
	}
	fmt.Println(ans)
}
