// Product Max
package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) (int, error) {
	sc.Scan()
	t := sc.Text()
	return strconv.Atoi(t)
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

/*
   xmin xmax ymin ymax
      *    -    *    -  2 xmin*ymin
      -    +    *    -  2 xmin*ymin
      *    -    -    +  2 xmin*ymin
      +    *    *    -  4 xmin*ymax
      *    -    +    *  3 xmax*ymin
      -    +    +    *  1 xmax*ymax
      +    *    -    +  1 xmax*ymax
      +    *    +    *  1 xmax*ymax
      -    +    -    +  5 compare(xmax*ymax, xmin*ymin)
*/
func productMax(xmin, xmax, ymin, ymax int) int {
	if (0 <= xmin && 0 <= ymax) ||
		(0 <= xmax && 0 <= ymin) {
		return xmax * ymax
	}
	if (xmin < 0 && ymax < 0) ||
		(xmax < 0 && ymin < 0) {
		return xmin * ymin
	}
	if 0 <= xmin && ymax < 0 {
		return xmin * ymax
	}
	if xmax < 0 && 0 <= ymin {
		return xmax * ymin
	}
	p := xmax * ymax
	n := xmin * ymin
	if p < n {
		return n
	} else {
		return p
	}
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	a, _ := nextInt(sc)
	b, _ := nextInt(sc)
	c, _ := nextInt(sc)
	d, _ := nextInt(sc)

	fmt.Println(productMax(a, b, c, d))
}
