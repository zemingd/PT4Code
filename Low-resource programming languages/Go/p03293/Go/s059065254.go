package main

import(
  "fmt"
  "strings"
)

func main(){
  var S,T string
  
  fmt.Scan(&S)
  fmt.Scan(&T)

  i,cnt := 0,0
  
  for i<len(S){
    if strings.Count(T,S[i:i+1])==strings.Count(S,S[i:i+1]){
      cnt++
    }
    i++
  }
  
  if cnt==len(S){
    fmt.Print("Yes")
  }else{
    fmt.Print("No")
  }
}