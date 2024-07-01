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

	counter := int64(0)

	for i0 := 0; i0 < paramN; i0++ {
		if i0 < paramN-1 {
			for i1 := i0 + 1; i1 < paramN; i1++ {
				p0, _ := strconv.ParseInt(params[i0], 10, 64)
				p1, _ := strconv.ParseInt(params[i1], 10, 64)
				if int64(i1-i0) == (p0 + p1) {
					counter++
				}
			}
		}
	}

	fmt.Println(counter)
}
