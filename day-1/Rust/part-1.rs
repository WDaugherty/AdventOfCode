use crate::util::parse::*;

pub fn parse(input: &str) -> Vec<&str> {
    input.lines().collect()
}


pub fn part1(input: &[&str]) -> u32 {
    input
        .iter()
        .map(|line| {
            let first = line.bytes().find(u8::is_ascii_digit).unwrap().to_decimal();
            let last = line.bytes().rfind(u8::is_ascii_digit).unwrap().to_decimal();
            (10 * first + last) as u32
        })
        .sum()
}


