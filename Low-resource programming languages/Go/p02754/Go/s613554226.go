package main 
import ("fmt")

func main(){

  var a,b,c,ret,fl int;

  fmt.Scanf("%d %d %d", &a, &b, &c );
  
  for; fl <=a ;{
      for i :=0; i<b; i++{
          fl+=1
          ret+=1
          if fl==a{
                fmt.Println(ret);
              return
          } 
      }

    fl+=c
      
      if fl>= a{
          break
      }
  }
    fmt.Println(ret);
}