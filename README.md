PlugFprof
=========

A Plug that adds fprof tracing to a web app.

### Usage

Add to your dependencies in `mix.exs`:

```elixir
  defp deps do
    [{:plug_fprof, "~> 0.0.1"}]
  end
```

Then `use` it from within your plug/pheonix router:

```elixir
defmodule MyRouter do
  use Plug.Router
  use PlugFprof


end
```

FProf will write it's tracing data into `fprof.trace`.  You can profile &
analyze this from `iex`:

```
iex(1)> :fprof.profile()
Reading trace data...
.........
End of trace!
:ok
iex(2)> :fprof.analyse([dest: 'analysis.txt', cols: 120, callers: true, sort:
:own, totals: true, details: true])
Processing data...
Creating output...
Done!
:ok
```

See [the fprof documentation](http://www.erlang.org/doc/man/fprof.html) for
more details.
