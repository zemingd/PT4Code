package main

import "fmt"

func main() {
	var n, a, b, c, d, e int
	result := 0
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)
	fmt.Scanf("%d", &c)
	fmt.Scanf("%d", &d)
	fmt.Scanf("%d", &e)
  	basic := a
	canTrasnportNum := &[5]int{a, b, c, d, e}
	for _, current := range canTrasnportNum {
		if current < basic {
			basic = current
		}
	}
    if basic >= n {
		result = 5
    }else{
  	  result = len(canTrasnportNum)
      if (n - basic) < basic  {
        result = result + 1
      }else{
        result = result + (n - basic) / basic
      }
      if (n-basic)/basic != 0 {
          result = result + 1
      }	
    }
    fmt.Printf("%d", result)
}
