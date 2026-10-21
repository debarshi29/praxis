use std::io::{self, BufWriter, Read, Write};

// insight:
// time / subs:

fn main() {
    let mut inp = String::new();
    io::stdin().read_to_string(&mut inp).unwrap();
    let mut it = inp.split_ascii_whitespace().map(|x| x.parse::<i64>().unwrap());
    let out = &mut BufWriter::new(io::stdout().lock());

    let t = it.next().unwrap(); // remove for single-test problems
    for _ in 0..t {
        let n = it.next().unwrap() as usize;
        let a: Vec<i64> = (0..n).map(|_| it.next().unwrap()).collect();
        writeln!(out, "{}", a.len()).unwrap();
    }
}
