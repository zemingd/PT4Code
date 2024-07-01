package main

import "fmt"

const WHITE = "1"
const BLACK = "0"

func main() {

	var s string
	sum := 0
	fmt.Scan(&s)
	tiles := make([]string, len(s))
	runes := []rune(s)
	for i := 0; i < len(runes); i++ {
		tiles[i] = string(runes[i])
	}

	for i := range tiles {
		if i == 0 {
			continue
		}
		if tiles[i] == tiles[i-1] {
			if tiles[i] == WHITE {
				tiles[i] = BLACK
				sum++
			} else {
				tiles[i] = WHITE
				sum++
			}
		}

	}

	fmt.Println(sum)

}
