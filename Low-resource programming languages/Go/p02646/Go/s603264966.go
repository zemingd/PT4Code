package main

import (
	"errors"
	"fmt"
	"log"
	"math"
)
var myErr = errors.New("error1")

func main() {
	var a, b, v, w int64
	var l, i int64
	var t float64
	_, _ = fmt.Scan(&a, &v)
	_, _ = fmt.Scan(&b, &w)
	_, _ = fmt.Scan(&t)
	l = b - a
	i = v - w
	t = math.Abs(t)

	if a == b{
		if err := doError(1); err != nil{
			log.Fatalf("%#v", myErr)
		}
	}

	if l <= int64(t)*i {
		fmt.Println("YES")
	}else if l > int64(t)*i{
		fmt.Println("NO")
	}
}

func doError(i int) error {
	if i == 1 {
		return myErr
	}
	return nil
}