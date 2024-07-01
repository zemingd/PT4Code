package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	
	w,h,x,y := scanInt(),scanInt(),scanInt(),scanInt()

	cx,cy := float64(w/2),float64(h/2)
	ans := float64(w*h)/2.0
	if cx == float64(x) && cy == float64(y) {
		fmt.Println(ans,1)
	} else {
		fmt.Println(ans,0)
	}
}
