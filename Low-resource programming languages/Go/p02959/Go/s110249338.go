package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	var n int

	if sc.Scan() {
		line := sc.Text()
		n, _ = strconv.Atoi(line)
	}

	a := make([]int, n + 1)
	b := make([]int, n)

	if sc.Scan() {
		line := sc.Text()
		for i, data := range strings.Split(line, " ") {
			dataInt, _ := strconv.Atoi(data)
			a[i] = dataInt
		}
	}

	if sc.Scan() {
		line := sc.Text()
		for i, data := range strings.Split(line, " ") {
			dataInt, _ := strconv.Atoi(data)
			b[i] = dataInt
		}
	}

	cnt := 0
	for i := 0; i < n; i++ {
		minI := int(math.Min(float64(a[i]), float64(b[i])))
		cnt += minI
		b[i] -= minI

		minI2 := int(math.Min(float64(a[i+1]), float64(b[i])))
		cnt += minI2
		a[i+1] -= minI2
	}

	fmt.Println(cnt)
}
