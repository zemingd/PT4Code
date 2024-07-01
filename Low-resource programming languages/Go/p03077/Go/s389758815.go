package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	data := []int64{}
	for sc.Scan() {
		i, _ := strconv.ParseInt(sc.Text(), 10, 64)
		data = append(data, i)
	}
	n := data[0]
	transport := data[1:]

	// データの中で一番小さいものを選ぶ
	smallest := transport[0]
	for i := 1; i < len(transport); i++ {
		if transport[i] < smallest {
			smallest = transport[i]
		}
	}

	total := int64(math.Ceil(float64(n)/float64(smallest))) + int64(len(transport)-1)
	fmt.Println(total)
}
