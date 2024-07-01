package main

import (
  "fmt"
)

func main(){
  
  var day string
  fmt.Scan(&day)
 
  if day == "SUN"{
    fmt.Println("7")
  }else if day == "MON"{
    fmt.Println("6")
  }else if day == "TUE"{
    fmt.Println("5")
  }else if day == "WED"{
    fmt.Println("4")
  }else if day == "THU"{
    fmt.Println("3")
  }else if day == "FRI"{
    fmt.Println("2")
  }else{
    fmt.Println("1")
  }
  
  
  
}
