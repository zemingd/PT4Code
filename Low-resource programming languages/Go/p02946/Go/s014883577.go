package main

import (
  "fmt"
)

func main() {
  const MAX_INT = int(^uint(0) >> 1)
  const MIN_INT = -MAX_INT - 1

  var k, x int
	fmt.Scan(&k, &x)

	seed := []int{}
	for index := 0; index < k; index++ {
		if(index == 0){
			seed = append(seed, x)
		}else{
			seed = append(seed, x + index)
			seed = append(seed, x - index)
		}
	}

	filtered_seed := Filter(seed, func(v int) bool {
			return MIN_INT < v && v < MAX_INT
	})

  fmt.Println(filtered_seed)
}

func Filter(target_array []int, f func(int) bool) []int {
	return_array := []int{}
	for _, target_item := range target_array {
		if f(target_item) {
      return_array= append(return_array, target_item)
		}
	}
	return return_array
}