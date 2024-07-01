package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat() float64 {
	return float64(nextInt())
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	w := nextFloat()
	h := nextFloat()
	x := nextFloat()
	y := nextFloat()

	halfW := w / 2.0
	halfH := h / 2.0

	var rectangle float64
	if (x == w && y == h) || (x == 0 && y == 0) || (x == w && y == 0) || (x == 0 && y == h) {
		rectangle = w * h / 2
		fmt.Printf("%f %d", rectangle, 0)
		return
	}

	if x == halfW && y == halfH {
		rectangle = w * h / 2
		fmt.Printf("%f %d", rectangle, 1)
		return
	}

	if x == halfW || y == halfH {
		rectangle = w * h / 2
		fmt.Printf("%f %d", rectangle, 0)
		return
	}

	// if x == halfW {
	// 	rectangle = w * h / 2
	// 	fmt.Printf("%f %d", rectangle, 1)
	// 	return
	// }

	if (0 <= x || x <= w) && y == 0 {
		if x < halfW {
			rectangle = x * h
		} else if halfW < x {
			rectangle = (w - x) * h
		}

		fmt.Printf("%f %d", rectangle, 1)

		return
	}

	if (0 <= y || y <= h) && x == 0 {
		if y < halfH {
			rectangle = y * w
		} else if halfH < y {
			rectangle = (h - y) * w
		}

		fmt.Printf("%f %d", rectangle, 1)

		return

	}

	if (0 < x || x < w) && (0 < y || y < h) {
		rectangle = math.Max(math.Min(x*h, (w-x)*h), math.Min(y*w, (h-y)*w))
		fmt.Printf("%f %d", rectangle, 0)
		return

	}

}
