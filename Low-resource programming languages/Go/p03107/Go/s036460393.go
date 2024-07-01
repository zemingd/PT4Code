package main

import (
	"bufio"
	"fmt"
	"os"
)

var scd = bufio.NewScanner(os.Stdin)

func delete(s []int, i int) []int {
	s = append(s[:i], s[i+1:]...)
	n := make([]int, len(s))
	copy(n, s)
	return n
}
func main() {
	scd.Split(bufio.ScanWords)
	scd.Scan()
	s := scd.Text()
	ar := []int{}
	result := 0
	for _, v := range s {
		if len(ar) > 0 && ar[len(ar)-1] != int(v) {
			ar = delete(ar, len(ar)-1)
			result += 2
		} else {
			ar = append(ar, int(v))
		}
	}
	fmt.Println(result)
}
