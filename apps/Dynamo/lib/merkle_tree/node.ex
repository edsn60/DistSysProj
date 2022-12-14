defmodule MerkleTree.Node do
  @moduledoc """
    This module implements a tree node abstraction.
  """

  defstruct [:value, :children, :height, :keys]

  @type hash :: binary() | String.t()

  @type t :: %__MODULE__{
          value: hash(),
          children: [MerkleTree.Node.t()],
          height: non_neg_integer,
          keys: list()
        }
end
