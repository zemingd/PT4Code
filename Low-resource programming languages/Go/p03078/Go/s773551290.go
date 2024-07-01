package main

import (
  "fmt";
  "sort"
       )


func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}

func main(){
	var x,y,z,k int
	fmt.Scan(&x, &y,&z,&k)
	a := scanNums(x)
	b :=scanNums(y)
	c := scanNums(z)

	var result = []int{}

	for _,aa := range a {
		for _,bb := range b {
			for _,cc := range c {
				result = append(result, aa + bb + cc)
			}
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(result)))

  for _,r := range result[:k] {
		fmt.Println(r)
	}
}