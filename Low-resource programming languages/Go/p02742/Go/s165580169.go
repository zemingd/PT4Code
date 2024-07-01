package main
 
import (
	"fmt"
  "math"
)
func roundInt(num float64) float64 {
    t := math.Trunc(num)
    if math.Abs(num-t) >= 0.5 {
        return t + math.Copysign(1, num)
    }
    return t
}

func main() {
	var a,b int
    var t float64
	fmt.Scan(&a, &b)

  for i := 1 ; i <= a ; i++{
    var w float64
    w =  float64(b)
    if i % 2 == 0{
      	t += math.Floor(w / 2)
    }else{
    	t += roundInt(w / 2)
    }
  }
  fmt.Println(t)
}