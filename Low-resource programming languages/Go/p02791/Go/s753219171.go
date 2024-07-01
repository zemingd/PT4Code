package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		log.Fatal(err)
	}
	return i
}

func main() {
	var result int

	sc.Split(bufio.ScanWords)
	n := nextInt()
	list := []int{}
	for i := 0; i < n; i++ {
		x := nextInt()
		list = append(list, x)
		check := true
		for s := 0; s < i; s++ {
			if x > list[s] {
				check = false
			}
		}

		if check {
			result++
		}
	}

	fmt.Println(result)
}