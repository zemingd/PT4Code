package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	//a := 123456789
	//b := 31415926535897932384626433832795028841971693993751058209749445923078164062862089986280
	reader := bufio.NewReader(os.Stdin)
	input, _ := reader.ReadString('\n')

	t := 0
	for i, v := range input {
		if i < len(input)-1 {
			cv := int(v - '0')
			fmt.Println(cv)

			t = (t + cv) % 9
		}
	}
	fmt.Println(t)
}