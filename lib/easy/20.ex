defmodule Easy.Solution20 do
  @spec is_valid(s :: String.t()) :: boolean
  def is_valid(s) do
    String.graphemes(s)
    |> Enum.reduce([], fn n, l ->
      cond do
        length(l) > 0 && closes(List.first(l), n) ->
          [_ | t] = l
          t

        true ->
          [n | l]
      end
    end)
    |> length() == 0
  end

  @spec closes(s :: String.t(), t :: String.t()) :: boolean
  defp closes("{", "}"), do: true
  defp closes("(", ")"), do: true
  defp closes("[", "]"), do: true
  defp closes(_, _), do: false
end
