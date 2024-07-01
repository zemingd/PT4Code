package main

import (
    "bufio"
    "fmt"
	"os"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var N,M int
	fmt.Scan(&N,&M)
	var A string
  	buf := make([]byte, 1000000)
  	sc.Buffer(buf, 1000000000)
	if sc.Scan() {
		A = sc.Text()
	}
	distance_A := make([]int, M)
	for index, i := range strings.Fields(A) {
		value, _ := strconv.Atoi(i)
		distance_A[index] = value
	}
	var total int
	for i := 0; i < M-1; i++{
		distance_diff := distance_A[i+1] - distance_A[i]
		if distance_diff < N/2 {
			total += distance_diff
		} else {
			total += N - distance_diff
		}
	}
	fmt.Println(total)
}