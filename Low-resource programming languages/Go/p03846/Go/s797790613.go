package main
import "fmt"

var (
	n int
  	arr  [100000]int
)


func main(){
  m := map[int]int{}
  fmt.Scan(&n)
  for i:=0;i<n;i++{
    fmt.Scan(&arr[i])
    if _,ok := m[arr[i]];!ok{
    	m[arr[i]] = 0
    }
    
    m[arr[i]] += 1
  }
  k := n - 1
  isable := true
  for ;k>=0;k -=2 {
    if k == 0 {
      if m[k] != 1{
      	isable = fasle
        break
      }else{
        if m[k] != 2{
        	isable = false
          break
        }
   }
      
}
    if isable{
      q := (2 **(n/2)) % (10**9 + 7)
      fmt.Println(q)
    }else{
      fmt.Println(0)
    }
