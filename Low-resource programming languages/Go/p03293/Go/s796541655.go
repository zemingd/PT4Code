package main

import(
  "fmt"
)

func main(){
  var S,T,R,Q string
  
  fmt.Scan(&S)
  fmt.Scan(&T)

  i := 0
  R=S
  
  for i<len(S){
    
    Q=R[len(R)-1:]
    R=R[:len(R)-1]
    R=Q+R
    
    fmt.Println(R)
    
    if R==T{
      fmt.Println("Yes")
      break
    }else{
      if i==len(S)-1{
        fmt.Println("No")
        break
      }
    }
    i++
  }
}
