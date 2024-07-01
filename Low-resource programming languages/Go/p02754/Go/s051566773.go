package main 
import ("fmt")

func main(){

  var a int;
  var b int;
  var c int;
  
  var X string;
  var ret int;
  
  var fl int;
  
  fmt.Scanf("%d %d %d", &a, &b, &c );
  
  for; fl <=a ;{
      for i :=0; i<b; i++{
          X+= "A"
          fl+=1
          ret+=1
          if fl==a{
              break
          } 
      }
      for j :=0; j<c; j++{
          X+= "B";
           fl+=1
          if fl==a{
              break
          } 
      }
      
      if fl == a{
           fmt.Println(ret);
          break
      }
  }
  
  //for ind, c:= range X{
   //     if ind == a{
  //          break;
  //      }
  //      if c == 'A'{
   //       ret += 1;
  //      }
 // }

   
}