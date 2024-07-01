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
	counter := 0
	for i := 0; i < slimes; i++ {
		if str != strColor[i] {
			str = strColor[i]
			continue
		}
		counter++
	}

	fmt.Printf("%d", counter)
}
