package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
)

func main() {
	var maxv, minv int
	maxv = math.MinInt32

	scanner := bufio.NewScanner(os.Stdin)
	if scanner.Scan() {
		_, err := strconv.Atoi(scanner.Text())
		if err != nil {
			os.Exit(1)
		}
	}
	if scanner.Scan() {
		var err error
		minv, err = strconv.Atoi(scanner.Text())
		if err != nil {
			os.Exit(1)
		}
	}

	for scanner.Scan() {
		v, err := strconv.Atoi(scanner.Text())
		if err != nil {
			if err == io.EOF {
				break
			}
			os.Exit(1)
		}
		if v-minv > maxv {
			maxv = v - minv
		}
		if v < minv {
			minv = v
		}
	}
	fmt.Println(maxv)
}

