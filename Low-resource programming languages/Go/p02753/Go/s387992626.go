package main

import (
       "bufio"
       "fmt"
       "os"
       "strconv"
       "math"
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

func check(maxA int, minA int, maxB int, minB int) int {
     ans := -1
     if (maxA < minB) || (maxB < minA) {
     	return -1
     } else {
        for i := maxA; i >= minA; i-- {
	    if (minB <= i) && (i <= maxB) {
	       ans = i
	    }
	}
     }
     return ans
}

func main() {
     sc.Split(bufio.ScanWords)
     a := nextInt()
     b := nextInt()

     maxA := int(math.Round(float64(a+1) * 12.5)) - 1
     minA := int(math.Round(float64(a) * 12.5))
     minB := b * 10
     maxB := minB + 9

     fmt.Println(check(maxA,minA,maxB,minB))
}     