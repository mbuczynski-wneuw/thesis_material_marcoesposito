# <Thesis title: the financial problem should be visible here>

**Author:** <name> · **Supervisor:** Mateusz Buczyński · **Project:** GARCHNet / RL signals / own

## Research question
<One or two sentences.>

## Layout

```text
README.md         how to reproduce everything (this file)
pyproject.toml    environment definition (uv); uv.lock committed
data/             raw data (not committed), or a script that fetches it
src/              reusable code
experiments/      configurations and run scripts
results/          generated tables and figures
paper/            the thesis: WNE LaTeX template (see paper/README.md)
```

## Reproduce

Requires [uv](https://docs.astral.sh/uv/) and a TeX distribution with `latexmk` (or Overleaf for `paper/`).

```sh
make env                                 # uv sync: exact environment from uv.lock
uv run python experiments/<run>.py       # rebuilds results/ (add your own run scripts)
make paper                               # builds the thesis PDF: paper/thesis.pdf
make article                             # builds the stand-alone article: paper/article/article.pdf
```

The template ships only the basics. Add what your project needs, and commit `pyproject.toml` and `uv.lock`:

- GARCHNet project: `uv add arch torch scipy`
- RL project: `uv add torch stable-baselines3 gymnasium`
- Data: `uv add yfinance`
- Notebooks in the browser: `uv add jupyterlab` (VS Code works with the included `ipykernel`)

## Data
<Source, licence, download date, exact tickers and period.>
