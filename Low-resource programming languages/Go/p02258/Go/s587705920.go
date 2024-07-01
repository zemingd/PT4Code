package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() int {
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())
	return n
}


func main() {
	num := nextLine()
	array := []int{}
	min := math.MaxInt64
	ret := -math.MaxInt64
	for i := 0; i < num; i++ {
		array = append(array, nextLine())
		if ret < array[i] - min {
			ret = array[i] - min
		}
		if array[i] < min {
			min  = array[i]
		}
	}

	fmt.Println(ret)
}

