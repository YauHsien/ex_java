# ExJava
. . . is a language toy as Work-in-Progress.

Build a mini Java language by using the Erlang OTP.

## Start

Get this code and use following commands to build and execute it:
```elixir
mix deps.get
iex -S mix
# Then a Elixir shell starts
```

## Walk around

First import the module `ExJava.Lang`,
```
import ExJava.Lang
```

And create a class definition,
```
c = class Hello
```

Then use those statements to get new instances,
```elixir
# This is a working statement.
> h = new Hello
%Hello{hello: nil, world: nil}
# Followings are to be improved...
> h = new Hello()
> h = new Hello("John", "Doe")
> h = new Hello ["John", "Doe"]
> h = new Hello, ["John", "Doe"]
```

And that's all. I'm still not familiar with rewriting by macro.
