package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	in := scanner.Text()
	odd_0 := 0
	odd_1 := 0
	even_0 := 0
	even_1 := 0
	for i, char := range strings.Split(in, "") {
		if i%2 != 0 {
			if char == "0" {
				odd_1++
			} else {
				odd_0++
			}
		} else {
			if char == "0" {
				even_1++
			} else {
				even_0++
			}
		}
	}
	fmt.Println(math.Min(float64(odd_0+even_1), float64(odd_1+even_0)))
}
