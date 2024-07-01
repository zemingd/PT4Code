package main

import (
	"errors"
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	var ret int
	var err error
	ret, err = HolydayYasumi(s)
	if err == nil {
		fmt.Println(ret)
	}
}
func HolydayYasumi(s string) (int, error) {
	week := []string{"SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"}
	for idx, day := range week {
		if day == s {
			return 7 - idx, nil
		}
	}
	return -1, errors.New("invalid input")
}
