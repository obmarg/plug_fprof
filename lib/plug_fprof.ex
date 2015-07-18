defmodule PlugFprof do
  defmacro __using__(_env) do
    quote location: :keep do
      @before_compile PlugFprof
    end
  end

  defmacro __before_compile__(_env) do
    quote location: :keep do
      defoverridable [call: 2]

      def call(conn, opts) do
        try do
          :fprof.trace(:start)
          super(conn, opts)
        after
          :fprof.trace(:stop)
        end
      end

    end
  end
end
