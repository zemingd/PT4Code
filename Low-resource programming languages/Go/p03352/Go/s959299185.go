package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readFloat() float64 {
	sc.Scan()
	r, _ := strconv.ParseFloat(sc.Text(), math.MaxInt64)
	return r
}

func main() {
	x := readFloat()
	for i := x; i >= 1; i-- {
		sqrt := math.Sqrt(i)
		if sqrt == math.Floor(sqrt) {
			fmt.Println(i)
			break
		}
		//cbrt := math.Cbrt(i)
		//if cbrt == math.Floor(cbrt) {
		//	fmt.Println(i)
		//	break
		//}
	}
}
