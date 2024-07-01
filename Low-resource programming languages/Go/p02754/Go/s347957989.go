package main 
import ("fmt")

func main(){

  var a int;
  var b int;
  var c int;
  
  var X string;
  var ret int;
  var using int;
  
  fmt.Scanf("%d %d %d", &a, &b, &c );

   
  for; len(X) <=a ;{
      for i :=0; i<b; i++{
          X+= "A"
      }
      for j :=0; j<c; j++{
          X+= "B";
      }
  }
  
  for _, c:= range X{
      if using<a{
        using +=1
        if c == 'A'{
          ret += 1;
        }
      }else{
          break;
      }
  }

    fmt.Println(ret);
}