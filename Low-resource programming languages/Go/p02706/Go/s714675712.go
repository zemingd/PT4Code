package main

/*
   N M
   a1 a2 a3 ... aN
*/
import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	nm := strings.Split(stdin.Text(), " ")
	n, _ := strconv.Atoi(nm[0])
	m, _ := strconv.Atoi(nm[1])
	var is []int
	var days int = 0
	stdin.Scan()
	line := strings.Split(stdin.Text(), " ")
	if m == len(line) {
		is = make([]int, len(line))
		for i, v := range line {
			t, _ := strconv.Atoi(v)
			is[i] = t
			days += t
		}
	}
	if n-days>=0 {
	fmt.Println(n-days)
	} else {
	fmt.Println("-1")
	}
	
}
