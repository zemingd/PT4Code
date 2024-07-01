package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func calc(radius string)  {
	iRadius, _ := strconv.Atoi(radius)
	fmt.Println(3*iRadius*iRadius)
}

func main() {

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
			calc(scanner.Text())
	}
}