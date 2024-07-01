package main

import (
	"fmt"
	//"sort"
	//"strconv"
	//"strings"

	"math"
)

func main() {
	//input
	var a, b int
	fmt.Scan(&a, &b)
	max := math.Max(float64(a), float64(b))
	primelist := findPrime(max)

	//fmt.Print(primelist)

	count := 0
	for _, prime := range primelist{
		if a % prime == 0 && b % prime == 0{
			count++
		}
	}
	// puls 1
	count++
	//nC2 = n
	fmt.Print(count)

	//sc := bufio.NewScanner(os.Stdin)
	//sc.Split(bufio.ScanWords)

	/*
		for i := 0; i < n; i++ {
			sc.Scan()
			content, _ := strconv.Atoi(sc.Text())
			h = append(h, content)
			x = append(x, 0)
		}
	*/

}

func findPrime(maxNum float64) []int {

	var list []int
	for i := 2; i <= int(maxNum); i++ {
		list = append(list, i)
	}

	max := math.Sqrt(maxNum)

	var tmp []int
	var t = 1
	for index := 0; t < int(max); index++ {
		t = list[index]
		for i := 0; i < len(list); i++ {
			if list[i]%t != 0 {
				tmp = append(tmp, list[i])
			} else if list[i] == t {
				tmp = append(tmp, list[i])
			}
		}
		list = tmp
		tmp = nil
	}
	return list
}
