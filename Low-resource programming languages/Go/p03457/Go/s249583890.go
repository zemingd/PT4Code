package main

import(
	"fmt"
)

func main(){
  var num int
  var slct, slcx, slcy []int
  var ans bool
  var i int = 0

	num = fmt.Scanf("%d\n", &num)
  	for num > i {
    	fmt.Scanf("%d %d %d\n", &slct[i], &slcx[i], &slcy[i])
    	i++
	}
  
  var diff int = slct[num] - slcx[num] - slcy[num]
  i = 0
  for num > i {
    if diff % 2 != 0 {
		ans = false
      	break
    }
    i++
  }
  fmt.Println(ans)
}