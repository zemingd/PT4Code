package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	paramN, _ := strconv.Atoi(scanner.Text())
	scanner.Scan()
	params := strings.Split(scanner.Text(), " ")

	counter := 0

	for i0 := 0; i0 < paramN; i0++ {
		if i0 < paramN-1 {
			for i1 := i0 + 1; i1 < paramN; i1++ {
				p0, _ := strconv.Atoi(params[i0])
				p1, _ := strconv.Atoi(params[i1])
				if (i1 - i0) == (p0 + p1) {
					counter++
				}
			}
		}
	}

	fmt.Println(counter)
}
