# praxis

Codeforces training arc, Sep 2026 – Sep 2027. Source of truth for the plan: the Notion hub
"Competitive Programming — Codeforces Roadmap". Languages: **Python and Rust only**.

- Python for most problems until it hits time limits; Rust when the constant factor matters.
- No contest-time experiments with unfamiliar Rust features; stick to `templates/base.rs`.
- Phase 5 (interview taper) re-implements Tier 1 problems in Python.

## Layout

- `templates/` — `base.py`, `base.rs`, `run.sh`, `stress.sh`, `gen.py`, `snippets/`
- `contests/` — one post-mortem `.md` per rated round
- topic folders — by insight, not Codeforces tag; `cses/` mirrors CSES sections

File naming: `<contest><letter>-<slug>.{py,rs}`, e.g. `2478A-zero-sum.py`.
Every file starts with a one-line `insight:` and `time / subs:` comment.

## Workflow

```
templates/run.sh math/2478A-zero-sum.py     # reads in.txt if present
templates/stress.sh "python sol.py" "python brute.py" "python gen.py"
```

Pre-submit checklist: n = 1 · all equal / all distinct · overflow (Rust: use `i64`/`u64`) ·
reset state per test · output format and `-1` case · 1-indexing bounds.

## Rating log

| Date | Round | Before | After | Notes |
|------|-------|--------|-------|-------|

## Topic status

| Topic | Phase | Solved | Last reviewed |
|-------|-------|--------|---------------|
| implementation | 1 | 0 | |
| greedy | 1 | 0 | |
| two-pointers / prefix sums | 1 | 0 | |
| binary-search | 2 | 0 | |
| math / number theory | 2 | 0 | |
| bits | 2 | 0 | |
| constructive | 2 | 0 | |
| graphs (BFS/DFS/DSU) | 2 | 0 | |
| dp | 2–3 | 0 | |
| trees | 3 | 0 | |
| range-queries | 3 | 0 | |
| strings | 3 | 0 | |
| combinatorics | 3 | 0 | |

## Phase 0 checklist

- [ ] Python and Rust toolchains working (`python --version`, `rustc --version`)
- [ ] Fast I/O templates verified
- [ ] 15 × 800-rated problems
- [ ] One rated Div 4 / Div 3
