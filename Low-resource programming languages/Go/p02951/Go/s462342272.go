package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func calc(array []int) int {
	return array[2] - (array[0] - array[1])
}

// run is run
func run(array []string) int {
	var arrayInt = make([]int, len(array))

	// for i := 0; i < len(array); i++ {
	for idx, value := range array {
		valueInt, _ := strconv.Atoi(value)
		arrayInt[idx] = valueInt
	}

	if ret := calc(arrayInt); ret > 0 {
		return ret
	}
	return 0
}

func main() {
	var n string
	var sc = bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		n = sc.Text()
	}

	array := strings.Fields(n)[:3]

	fmt.Println(run(array))
}

