package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
  	"math"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var transport []int
	personNum, _ := strconv.Atoi(nextLine())
	for i := 0; i < 5; i++ {
		num , _ := strconv.Atoi(nextLine())
		transport = append(transport, num)
	}
	sort.Sort(sort.IntSlice(transport))
    v := float64(personNum)/float64(transport[0])
	fmt.Println(int(math.Ceil(v))+4)
}
