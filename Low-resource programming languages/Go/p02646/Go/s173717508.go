package main
import "fmt"

func main(){
  var az, ah, bz, bh, t int64
  
  fmt.Scanf("%d %d", &az, &ah)
  fmt.Scanf("%d %d", &bz, &bh)
  fmt.Scanf("%d", &t)
  if ah < bh{
    fmt.Println("NO")
    return
  }
  k, h := 0, 0
  if az > bz{
    k = az - bz
  } else {
    k = bz - az
  }
  
  if ah > bh{
    h = ah - bh
  } else {
    //fmt.Println("a")
    h = bh - ah
  }
  
  //fmt.Printf("%d %d\n", h, k)
  
  if h == 0{
    if k == 0{
      fmt.Println("YES")
      return
    }else{
      fmt.Println("NO")
      return
    }
  }
  if t >= k/h{
    fmt.Println("YES")
    return
  }else{
    fmt.Println("NO")
    return
  }
}

