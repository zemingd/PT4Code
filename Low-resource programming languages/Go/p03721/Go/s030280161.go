package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()

	array := make([]int, 100000)
	for i := 0; i < n; i++ {
		a, b := nextInt(), nextInt()
		array[a] = b
	}

	counter := 0
	for i, v := range array {
		counter += v
		if counter >= k {
			fmt.Println(i)
			break
		}
	}
}
 
func next() string { 
	scanner.Scan()
	return scanner.Text()
}
func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
