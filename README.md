# praxis

My Codeforces practice log: solutions, notes and contest post-mortems, written in **Python and Rust**.

The idea is to build problem-solving recognition rather than collect accepted submissions. Every solution
starts with a one-line `insight:` comment stating the observation that cracked it, and problems are filed by
that insight rather than by Codeforces tag.

## Layout

| Path | Contents |
|------|----------|
| `implementation/`, `greedy/`, `math/`, `constructive/` | Core problem-solving techniques |
| `binary-search/`, `two-pointers/`, `bits/` | Search, sweeps (including prefix sums) and bit tricks |
| `dp/`, `graphs/`, `trees/` | Dynamic programming, graph and tree algorithms |
| `range-queries/`, `strings/`, `combinatorics/` | Data structures, string algorithms, counting |
| `cses/` | Mirrors the [CSES Problem Set](https://cses.fi/problemset/) sections |
| `contests/` | One post-mortem per rated round (see `contests/TEMPLATE.md`) |
| `templates/` | Base templates, local runner, stress-test harness, snippet checklist |

Files are named `<contest><letter>-<slug>.{py,rs}`, e.g. `2478A-zero-sum.py`.

## Usage

```bash
templates/run.sh math/2478A-zero-sum.py        # .py or .rs; reads in.txt if present
templates/stress.sh "python sol.py" "python brute.py" "python gen.py"
```

`run.sh` builds Rust with overflow checks and debug assertions on. `stress.sh` compares a solution against a
brute force on 500 random small cases and prints the first mismatch. Requires Python 3 and a Rust toolchain,
run from a POSIX shell (Git Bash on Windows).

## Approach

- Python by default; Rust when the constant factor matters.
- Write the observation as a comment before the code.
- Upsolve every contest: a blind attempt first, editorial hints only afterwards, then re-implement from a blank file.
- Pre-submit checklist: `n = 1`, all equal / all distinct, overflow, per-test resets, output format, indexing bounds.

## Progress

| Date | Round | Before | After | Notes |
|------|-------|--------|-------|-------|

| Topic | Solved | Last reviewed |
|-------|--------|---------------|
| implementation | 0 | |
| greedy | 0 | |
| two-pointers / prefix sums | 0 | |
| binary-search | 0 | |
| math / number theory | 0 | |
| bits | 0 | |
| constructive | 0 | |
| graphs | 0 | |
| dp | 0 | |
| trees | 0 | |
| range-queries | 0 | |
| strings | 0 | |
| combinatorics | 0 | |
