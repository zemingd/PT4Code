package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

type Num struct {
	X int
	Y int
	H int
}

func main() {
	s := IOInitialize()
	s.Buffer([]byte{}, math.MaxInt64)
	N := Int(s)
	nums := scanNums(s, N)
	resX := 0
	resY := 0
	resH := 0
	hasRes := false
	minH := 10000000000
	for _, num := range nums {
		if num.H < minH {
			minH = num.H
		}
	}
	for cy := 0; cy < 101; cy++ {
		for cx := 0; cx < 101; cx++ {
			for h := minH; h < minH+203; h++ {
				for i, num := range nums {
					if h-abs(num.X-cx)-abs(num.Y-cy) == num.H {
						/*
							fmt.Println("hoge")
							fmt.Println(i)
							fmt.Println(num.X, cx, num.Y, cy, num.H, minH)
							fmt.Println(len(nums))
						*/
						if i == len(nums)-1 {
							//fmt.Println("fuga")
							hasRes = true
							resX = cx
							resY = cy
							resH = abs(num.X-cx) + abs(num.Y-cy) + num.H
						}
					} else {
						break
					}
				}
				if hasRes {
					break
				}
			}
		}

		if hasRes {
			break
		}
	}
	fmt.Println(resX, resY, resH)
	//cx := 0
	//cy := 0
	/*
		for _, num := range nums {
			sumX += num.X
			sumY += num.Y
		}
		l := len(nums)
		cX := sumX / l
		cY := sumY / l
		num := nums[0]
		x0 := num.X
		y0 := num.Y
		h0 := num.H
		cH := abs(x0-cX) + abs(y0-cY) + h0
		fmt.Println(cX)
		fmt.Println(cY)
		fmt.Println(cH)
	*/
}

/*
func isOK(cX int, cY int, nums []Nums) bool {

}
*/

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func IOInitialize() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func Int(s *bufio.Scanner) int {
	if !s.Scan() {
		panic("scan error")
	}

	value, err := strconv.Atoi(s.Text())
	if err != nil {
		panic("text to int error")
	}
	return value
}

func String(s *bufio.Scanner) string {
	if !s.Scan() {
		panic("scan error")
	}

	return s.Text()
}

func scanNums(s *bufio.Scanner, len int) (nums []Num) {
	for i := 0; i < len; i++ {
		x := Int(s)
		y := Int(s)
		h := Int(s)
		nums = append(nums, Num{X: x, Y: y, H: h})
	}
	return
}

func scanstrings(s *bufio.Scanner, len int) (strs []string) {
	for i := 0; i < len; i++ {
		str := String(s)
		strs = append(strs, str)
	}
	return
}
