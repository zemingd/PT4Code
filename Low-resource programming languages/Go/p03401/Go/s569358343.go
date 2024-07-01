package main

import "fmt"


func deleteInt(slice []int, i int) (int, []int, error) {
	ret := slice[i]
	if len(slice) < i{
		return 0, nil, fmt.Errorf("Error")
	}
	ans := make([]int, len(slice))
	copy(ans, slice)

	ans = append(slice[:i], slice[(i+1):]...)
	return ret, ans, nil
}

func ans(a []int) int {
	ret := 0
	abs := func (x int) int {
				if x < 0 {
					return -x
				} else {
					return x
				}
			}
	for i := 0; i < len(a)-1; i++ {
		// fmt.Printf("i = %d; ret = %d\n", i, ret)
		ret += abs(a[i+1] - a[i])
	}
	ret += abs(a[0] - 0)
	ret += abs(a[len(a)-1] - 0)
	return ret
}

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i, _ := range a {
		fmt.Scan(&a[i])
	}

	for i := 0; i < len(a); i++ {
		tmp := make([]int, n)
		copy(tmp, a)
		_, tmp, _ = deleteInt(tmp, i)
		// fmt.Println(tmp)
		fmt.Println(ans(tmp))
	}
}
