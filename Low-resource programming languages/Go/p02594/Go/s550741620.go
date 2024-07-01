package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	p := strconv.Atoi(scanner.Text())
	n, _ := strconv.Atoi(p[0])
	d, _ := strconv.Atoi(p[1])
	result := 0
	for i := 0; i < n; i++ {
		scanner.Scan()
		p = strconv.Atoi(scanner.Text())
		x, _ := strconv.Atoi(p[0])
		y, _ := strconv.Atoi(p[1])
      	v := int(math.Cbrt(float64(x*x + y*y)))
		if v < d {
			result++
		}
	}
	fmt.Println(result)
}
