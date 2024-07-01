use std::io::stdin;

fn main() {
    let mut input = String::new();
    stdin().read_line(&mut input);
    let mut stack = [0; 2];
    for (i, j) in input.split_whitespace().enumerate() {
        stack[i] = j.parse().unwrap()
    }
    println!("{}", (stack[0] / stack[1]) +1);
}