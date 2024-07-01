package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	s, _ := r.ReadString('\n')
	s = strings.TrimRight(s, " \t\n")
	slice := strings.Split(s, " ")
	a := string(slice[0])
	b := string(slice[1])
	c := string(slice[2])
	A, _ := strconv.Atoi(a)
	B, _ := strconv.Atoi(b)
	C, _ := strconv.Atoi(c)

	ints := []int{A, B, C}
	sort.Ints(ints)
	fmt.Println(ints[2]*10 + ints[1] + ints[0])

}
