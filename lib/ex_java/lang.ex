defmodule ExJava.Lang do

  defmacro class(class) do
    quote do
      defmodule unquote(class) do
        use TypedStruct
        typedstruct do
          field :hello, :string
          field :world, :integer
        end
        def new(), do: %__MODULE__{}
        def new(key, value) do %__MODULE__{ hello: key, world: value }
        end
      end
    end
  end

  defmacro new(class), do: quote do: unquote(class).new()
  defmacro new(class, params), do: quote do: unquote(class).new(unquote(params))
end
