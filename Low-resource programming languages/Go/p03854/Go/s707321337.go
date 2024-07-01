package main

import (
  "fmt"
  "bufio"
  "os"
)

var SC = bufio.NewScanner(os.Stdin)

func main(){
  SC.Scan()
  S := SC.Text()
  // fmt.Scan(&S)

  // fmt.Println(S)
  //deramderam
  //dreamdreamer =>dreamdならdream
  //dreamerase
  //dreameraser => dreameraならdream

  //dreamerdream
  //dreamerdreamer => dreamerdならdreamer
  //dreamererase
  //dreamereraser => dreamereならdreamer

  //erasedream
  //erasedreamer => erasedならerase
  //eraseerase
  //eraseeraser => eraseeならerase

  //eraserdream
  //eraserdreamer => eraserdならeraser
  //erasererase
  //erasereraser => erasereならeraser

  var result string
  n := 0
  for {
    if len(S[n:]) == 5 && (S[n:] == "dream" || S[n:] == "erase") {
      result = "YES"
      break
    }else if len(S[n:]) == 6 && S[n:] == "eraser"{
      result = "YES"
      break
    }else if len(S[n:]) == 7 && S[n:] == "dreamer"{
      result = "YES"
      break
    }else if len(S[n:]) <= 7{
      result = "NO"
      break
    }else if S[n:n+7] == "dreamer" && S[n:n+8] != "dreamera"{
      n+=7 //dreamer
    }else if S[n:n+5] == "dream"{
      n+=5 //dream
    }else if S[n:n+5] == "erase" && S[n:n+6]!= "eraser"{
      n+=5 //erase
    }else if S[n:n+6] ==  "eraser"{
      n+=6
    }
    // fmt.Println(n)
  }
  fmt.Println(result)
}

// func saiki(S string){
//   if S[:5] == "dreamd"{ //dream
//     return saiki(S[5:])
//     }else if S[:7] == "dreamera"{ //dream
//       return saiki(S[5:])
//     }else if S[:7] == "dreamerd"{
//       return saiki(S[7:])
//     }else if S[:7] == "dreamere"{
//       return saiki(S[7:])
//     }else if S == ""{
//       return 'YES'
//     }else{
//       return 'NO'
//     }
// }
