package main
 
import "fmt"
import "strconv"
 
 
func main(){
   var money int64
   var a,b int64
   fmt.Scanf("%d %d %d",a,b,money)
   moneyDigits := len(strconv.FormatInt(money,10))
   resultDigits := 0
   var result int64 
   result = 0
   currentDigest := 10

  for i := moneyDigits - 1; currentDigest != resultDigits;i-- {	
   currentDigest = i
   if a * 1 + b * 1 > money {
      result = 0 
      break
   }
    remaining := money - (int64(i) * b)
    result = remaining / a
   resultDigits = len(strconv.FormatInt(result,10))
   if result > 1000000000{result = 1000000000}
   }
   fmt.Printf("result %d",result)
}