# Definition for a binary tree node.
#
# defmodule TreeNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           left: TreeNode.t() | nil,
#           right: TreeNode.t() | nil
#         }
#   defstruct val: 0, left: nil, right: nil
# end

defmodule Easy.Solution104 do
  @spec max_depth(root :: TreeNode.t | nil) :: integer
  def max_depth(root) do
    max_depth_node(root, 0)
  end

  @spec max_depth_node(root :: TreeNode.t | nil, prevDepth :: integer) :: integer
  def max_depth_node(nil, prevDepth), do: prevDepth
  def max_depth_node(node, prevDepth) do
    max(max_depth_node(node.left, prevDepth + 1), max_depth_node(node.right, prevDepth + 1))
  end
end