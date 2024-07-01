use std::env;
use std::io::*;
use std::str::*;

fn read<T: FromStr>() -> T {
    let stdin = stdin();
    let s = stdin.bytes().map(|c| c.unwrap() as char)
        .skip_while(|c| c.is_whitespace())
        .take_while(|c| !c.is_whitespace())
        .collect::<String>();
    s.parse::<T>().ok().unwrap()
}

fn main() {
    // main の引数
    /*
        引数なしのときargs.len() = 1;
    */
    let args: Vec<String> = env::args().collect();


        let S1 = read::<String>();
        let S1 = S1.chars().collect::<Vec<char>>();

        let S2 = read::<String>();
        let S2 = S2.chars().collect::<Vec<char>>();

        let S3 = read::<String>();
        let S3 = S3.chars().collect::<Vec<char>>();

        if S1[S1.len()-1] == S2[0] && S2[S2.len()-1] == S3[0] {
            println!("YES");
        }else {
            println!("NO");
        }
}
