package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)

	stdin.Scan()
	a, _ := strconv.Atoi(stdin.Text())
	stdin.Scan()
	b, _ := strconv.Atoi(stdin.Text())
	stdin.Scan()
	c, _ := strconv.Atoi(stdin.Text())
	stdin.Scan()
	sum, _ := strconv.Atoi(stdin.Text())

	ans := 0

	for x := 0; x <= a; x++ {
		for y := 0; y <= b; y++ {
			for z := 0; z <= c; z++ {
				if x*500+y*100+z*50 == sum {
					ans++
				}
			}
		}
	}

	fmt.Printf("%v\n", ans)
}
