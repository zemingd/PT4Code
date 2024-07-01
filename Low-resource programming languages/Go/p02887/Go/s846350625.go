package main

import (
	"fmt"
	"strings"
)

func main() {
	var slimes int
	fmt.Scanf("%d", &slimes)
	var color string
	fmt.Scanf("%s", &color)

	strColor := strings.Split(color, "")

	str := ""
	var unsetPoint []int
	for i := 0; i < slimes; i++ {
		if str != strColor[i] {
			str = strColor[i]
			continue
		}
		unsetPoint = append(unsetPoint, i)
	}

	var filteredColor []string
	for i, c := range strColor {
		if unsetTarget(unsetPoint, i) {
			continue
		}
		filteredColor = append(filteredColor, c)
	}

	fmt.Printf("%d", len(filteredColor))
}

func unsetTarget(unsetPoint []int, i int) bool {
	for _, p := range unsetPoint {
		if i == p {
			return true
		}
	}
	return false
}