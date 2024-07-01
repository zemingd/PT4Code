package main

/*
   N
   a1 a2 a3 ... aN
*/
import (
	"bufio"
	"fmt"
	//"log"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	n, _ := strconv.Atoi(stdin.Text())
	stdin.Scan()
	line := strings.Split(stdin.Text(), " ")
	is := make([]int, n,100000)
	for i, v := range line {
		t, _ := strconv.Atoi(v)
		is[i] = t
	}
	sum := sumarr(is)
	minnum := minarr(is)
	exam := sum%minnum
	if exam == 0 {
		fmt.Println(minnum)
	}
	if exam == 1 && minnum > 1 {
		fmt.Println("1")
	}
	if exam > 1 {
		fmt.Println(sum % minnum)
	}

}
func sumarr(a []int) int {
	var b int = 0
	for _, i := range a {
		b += i
	}
	return b
}
func minarr(a []int) int {
	var val int
	x := len(a)
	for i := 0; i <= x-1; i++ {
		val = min(a[0], a[i])
		for j := 1; j <= x-1; j++ {
			val = min(val, a[j])
		}
	}
	return val
}
func min(a, b int) int {
	if a <= b {
		return a
	} else {
		return b
	}
}
