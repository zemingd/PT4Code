package main

import (
	"fmt"
)

func getMin(a, min int) int {

            if a % min > 0 {
              if a % 2 == 1 || min % 2 == 1 {
                return 1
              } else {
                return getMin(min, a % min)
              }
            }
  return min
}

func main() {
	var N int
	fmt.Scan(&N)

	var min int
	fmt.Scan(&min)
	for i := 0; i < N-1; i++ {
		var a int
		fmt.Scan(&a)
      
		if a != min {
          if a > min {
            min = getMin(a, min)
          } else {
            min = getMin(min, a)
          }
          if min == 1 {
            break
          }
        }
	}
	fmt.Println(min)
}
